<?php
/**
 * Vista unificada de detalle de producto para la categoría "especialidades-cacao".
 * Reemplaza las fichas heredadas inconsistentes con una experiencia e-commerce
 * uniforme, responsiva, en español y conectada al carrito de compras.
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Uri\Uri;
use Joomla\Component\Content\Site\Helper\RouteHelper;

$item          = $this->item ?? null;
$rawText       = (string) ($item->text ?? '');
$categoryAlias = (string) ($item->category_alias ?? '');

$isProductArticle = $item && (
    $categoryAlias === 'especialidades-cacao'
    || strpos($rawText, 'producto-tarjeta-joomla') !== false
    || strpos($rawText, 'product-gallery-card') !== false
);

if (!$isProductArticle) {
    require JPATH_ROOT . '/plugins/system/helixultimate/overrides/com_content/article/default.php';
    return;
}

$app        = Factory::getApplication();
$db         = Factory::getDbo();
$user       = $this->getCurrentUser();
$categoryId = (int) ($item->catid ?? 0);
$itemId     = (int) ($item->id ?? 0);
$waPhone    = '593994851768';

$knownCacao = [
    'tableta-70-cacao'                => 70,
    'chocolate-naranja-jengibre'      => 60,
    'cacao-en-grano-tostado'          => 100,
    'pasta-tradicional-chocolate-taza'=> 100,
    'chocolate-almendras-sal-marina'  => 65,
    'cacao-puro-en-polvo'             => 100,
    'bombones-frutas-andinas'         => 70,
    'nibs-cacao-caramelizados'        => 100,
];

$escape = static function ($value): string {
    return htmlspecialchars((string) $value, ENT_QUOTES, 'UTF-8');
};

$extractPrice = static function (string $text): float {
    if (preg_match('/\$\s*([0-9]+(?:[.,][0-9]{1,2})?)/', $text, $match)) {
        return (float) str_replace(',', '.', $match[1]);
    }
    return 0.0;
};

$extractCacao = static function (string $alias, string $text) use ($knownCacao): int {
    if (isset($knownCacao[$alias])) {
        return (int) $knownCacao[$alias];
    }
    if (preg_match('/(?<!\d)(\d{2,3})\s*%[^.]{0,60}\bcacao\b/iu', $text, $match)) {
        return (int) $match[1];
    }
    return 0;
};

$resolveImage = static function ($imagesJson, string $fallbackTitle) {
    $decoded = json_decode((string) ($imagesJson ?? '{}'));
    $path    = '';

    if (is_object($decoded)) {
        $path = trim((string) ($decoded->image_fulltext ?: ($decoded->image_intro ?: '')));
    }

    if ($path === '') {
        $path = 'images/productos/imagen_producto_default.avif';
    }

    $url = preg_match('#^https?://#i', $path)
        ? $path
        : rtrim(Uri::root(), '/') . '/' . ltrim($path, '/');

    $alt = '';
    if (is_object($decoded)) {
        $alt = trim((string) ($decoded->image_fulltext_alt ?: ($decoded->image_intro_alt ?: '')));
    }
    if ($alt === '') {
        $alt = $fallbackTitle . ' - Chocolate Artesanal de Ambato';
    }

    return [
        'path' => ltrim($path, '/'),
        'url'  => $url,
        'alt'  => $alt,
    ];
};

// Cargar campos personalizados de com_fields si existen en la BD
$customFields = [];
if ($itemId > 0) {
    $fieldQuery = $db->getQuery(true)
        ->select([$db->quoteName('f.name'), $db->quoteName('fv.value')])
        ->from($db->quoteName('#__fields_values', 'fv'))
        ->join('INNER', $db->quoteName('#__fields', 'f') . ' ON ' . $db->quoteName('f.id') . ' = ' . $db->quoteName('fv.field_id'))
        ->where($db->quoteName('fv.item_id') . ' = ' . $itemId)
        ->where($db->quoteName('f.state') . ' = 1');
    $db->setQuery($fieldQuery);
    foreach ((array) $db->loadObjectList() as $fieldRow) {
        $customFields[$fieldRow->name] = trim((string) $fieldRow->value);
    }
}

// Parsear HTML del artículo para separar metadatos de compra y contenido editorial
$plainAll     = trim(preg_replace('/\s+/', ' ', html_entity_decode(strip_tags($rawText), ENT_QUOTES, 'UTF-8')));
$priceValue   = $extractPrice($plainAll);
$weightLabel  = '';
$leadText     = trim((string) ($item->metadesc ?? ''));
$editorialHtml = '';

if ($priceValue <= 0 && !empty($customFields['precio_producto'])) {
    $priceValue = $extractPrice($customFields['precio_producto']);
}

if (class_exists('DOMDocument')) {
    $prevUseErrors = libxml_use_internal_errors(true);
    $dom = new DOMDocument('1.0', 'UTF-8');
    $wrapped = '<!DOCTYPE html><html><head><meta charset="utf-8"></head><body><div id="ambato-parse-root">' . $rawText . '</div></body></html>';

    if (@$dom->loadHTML($wrapped)) {
        $xpath = new DOMXPath($dom);
        $root  = $xpath->query('//*[@id="ambato-parse-root"]')->item(0);

        if ($root) {
            // Extraer peso / presentación de .precio-badge o textos entre paréntesis junto al precio
            $badgeNodes = $xpath->query('.//*[contains(concat(" ", normalize-space(@class), " "), " precio-badge ")]', $root);
            if ($badgeNodes && $badgeNodes->length > 0) {
                $badgeText = trim($badgeNodes->item(0)->textContent);
                if ($priceValue <= 0) {
                    $priceValue = $extractPrice($badgeText);
                }
                if (preg_match('/\(([^)]+)\)/u', $badgeText, $wMatch)) {
                    $weightLabel = trim($wMatch[1]);
                }
            }

            if ($weightLabel === '' && preg_match('/\$\s*[0-9]+(?:[.,][0-9]{1,2})?\s*\(([^)]+)\)/u', $plainAll, $wMatch)) {
                $weightLabel = trim($wMatch[1]);
            }

            // Extraer resumen principal (p.lead)
            $leadNodes = $xpath->query('.//p[contains(concat(" ", normalize-space(@class), " "), " lead ")]', $root);
            if ($leadNodes && $leadNodes->length > 0) {
                $candidateLead = trim(preg_replace('/\s+/', ' ', $leadNodes->item(0)->textContent));
                if ($candidateLead !== '') {
                    $leadText = $candidateLead;
                }
            }

            // Limpiar estilos/scripts embebidos del contenido del artículo
            foreach ($xpath->query('.//style | .//script', $root) as $removeAsset) {
                if ($removeAsset->parentNode) {
                    $removeAsset->parentNode->removeChild($removeAsset);
                }
            }

            // Quitar tarjetas heredadas (.producto-tarjeta-joomla)
            foreach ($xpath->query('.//*[contains(concat(" ", normalize-space(@class), " "), " producto-tarjeta-joomla ")]', $root) as $legacyCard) {
                if ($legacyCard->parentNode) {
                    $legacyCard->parentNode->removeChild($legacyCard);
                }
            }

            // Quitar el bloque superior personalizado en artículos tipo Pasta (.product-gallery-card)
            // conservando las secciones inferiores ("Atributos..." y "El Ritual...")
            $galleryCards = $xpath->query('.//*[contains(concat(" ", normalize-space(@class), " "), " product-gallery-card ")]', $root);
            if ($galleryCards && $galleryCards->length > 0) {
                $node = $galleryCards->item(0);
                $topContainer = null;
                while ($node && $node !== $root) {
                    $textHere = $node->textContent ?? '';
                    $hasTitle = $xpath->query('.//*[contains(concat(" ", normalize-space(@class), " "), " producto-titulo-detalle ")] | .//h1', $node)->length > 0;
                    $hasLowerSections = stripos($textHere, 'Atributos de Alta') !== false || stripos($textHere, 'Ritual de Preparaci') !== false;
                    if ($hasTitle && !$hasLowerSections) {
                        $topContainer = $node;
                    }
                    $node = $node->parentNode;
                }
                if ($topContainer && $topContainer->parentNode) {
                    $topContainer->parentNode->removeChild($topContainer);
                } else {
                    foreach ($galleryCards as $gc) {
                        if ($gc->parentNode) {
                            $gc->parentNode->removeChild($gc);
                        }
                    }
                }
            }

            // Quitar íconos externos de Wikimedia o enlaces duplicados de volver al catálogo si quedara alguno residual
            foreach ($xpath->query('.//img[contains(@src, "upload.wikimedia.org")] | .//*[contains(concat(" ", normalize-space(@class), " "), " btn-volver-catalogo ")]', $root) as $extNode) {
                if ($extNode->parentNode) {
                    $extNode->parentNode->removeChild($extNode);
                }
            }

            // Quitar separadores <hr> iniciales o vacíos
            while ($root->firstChild) {
                $first = $root->firstChild;
                if ($first->nodeType === XML_TEXT_NODE && trim($first->textContent) === '') {
                    $root->removeChild($first);
                    continue;
                }
                if ($first->nodeType === XML_ELEMENT_NODE && strtolower($first->nodeName) === 'hr') {
                    $root->removeChild($first);
                    continue;
                }
                break;
            }

            $buffer = '';
            foreach ($root->childNodes as $child) {
                $buffer .= $dom->saveHTML($child);
            }
            $editorialHtml = trim($buffer);
        }
    }
    libxml_clear_errors();
    libxml_use_internal_errors($prevUseErrors);
}

if ($weightLabel === '' && !empty($customFields['presentacion_cacao'])) {
    $weightLabel = $customFields['presentacion_cacao'];
}

$cacaoPercent = $extractCacao((string) ($item->alias ?? ''), $plainAll . ' ' . ($customFields['presentacion_cacao'] ?? ''));
$presentationFull = !empty($customFields['presentacion_cacao'])
    ? $customFields['presentacion_cacao']
    : ($weightLabel !== '' ? $weightLabel : ($cacaoPercent ? $cacaoPercent . '% Cacao' : 'Elaboración artesanal'));
$originLabel = !empty($customFields['origen_grano'])
    ? $customFields['origen_grano']
    : 'Ambato, Tungurahua · Ecuador';

$imageInfo      = $resolveImage($item->images ?? '', (string) $item->title);
$priceFormatted = $priceValue > 0 ? '$' . number_format($priceValue, 2, '.', '') : '';
$priceNumeric   = $priceValue > 0 ? number_format($priceValue, 2, '.', '') : '0.00';

$waBaseUrl = 'https://wa.me/' . $waPhone . '?text=';
$waInitialMsg = 'Hola, deseo pedir ' . $item->title . ($priceFormatted !== '' ? ' (' . $priceFormatted . ')' : '');
$waFullUrl = $waBaseUrl . rawurlencode($waInitialMsg);

// Consultar productos de la misma categoría para navegación anterior/siguiente y relacionados
$categoryProducts = [];
if ($categoryId > 0) {
    $listQuery = $db->getQuery(true)
        ->select([
            $db->quoteName('a.id'), $db->quoteName('a.title'), $db->quoteName('a.alias'),
            $db->quoteName('a.catid'), $db->quoteName('a.language'), $db->quoteName('a.images'),
            $db->quoteName('a.introtext'), $db->quoteName('a.fulltext'), $db->quoteName('a.metadesc'),
            $db->quoteName('a.created'),
        ])
        ->from($db->quoteName('#__content', 'a'))
        ->where($db->quoteName('a.catid') . ' = ' . $categoryId)
        ->where($db->quoteName('a.state') . ' = 1');

    $now      = Factory::getDate()->toSql();
    $nullDate = $db->getNullDate();
    $listQuery->where('(' . $db->quoteName('a.publish_up') . ' IS NULL OR ' . $db->quoteName('a.publish_up') . ' = ' . $db->quote($nullDate) . ' OR ' . $db->quoteName('a.publish_up') . ' <= ' . $db->quote($now) . ')')
        ->where('(' . $db->quoteName('a.publish_down') . ' IS NULL OR ' . $db->quoteName('a.publish_down') . ' = ' . $db->quote($nullDate) . ' OR ' . $db->quoteName('a.publish_down') . ' >= ' . $db->quote($now) . ')');

    $viewLevels = array_map('intval', $user->getAuthorisedViewLevels());
    $listQuery->where($db->quoteName('a.access') . ' IN (' . implode(',', $viewLevels ?: [1]) . ')')
        ->order($db->quoteName('a.created') . ' DESC, ' . $db->quoteName('a.id') . ' DESC');

    $db->setQuery($listQuery);
    $categoryProducts = (array) $db->loadObjectList();
}

$prevProduct     = null;
$nextProduct     = null;
$relatedProducts = [];
$currentIndex    = -1;

foreach ($categoryProducts as $index => $candidate) {
    if ((int) $candidate->id === $itemId) {
        $currentIndex = $index;
        break;
    }
}

if ($currentIndex !== -1) {
    if ($currentIndex > 0) {
        $prevProduct = $categoryProducts[$currentIndex - 1];
    }
    if ($currentIndex < count($categoryProducts) - 1) {
        $nextProduct = $categoryProducts[$currentIndex + 1];
    }
}

foreach ($categoryProducts as $candidate) {
    if ((int) $candidate->id === $itemId) {
        continue;
    }
    $relatedProducts[] = $candidate;
    if (count($relatedProducts) >= 3) {
        break;
    }
}

$homeUrl    = rtrim(Uri::root(true), '/') . '/index.php';
$catalogUrl = $categoryId > 0
    ? Route::_('index.php?option=com_content&view=category&id=' . $categoryId)
    : $homeUrl;
$categoryName = trim((string) ($item->category_title ?? 'Especialidades de Cacao')) ?: 'Especialidades de Cacao';
$qtyInputId   = 'ambato-detail-qty-' . $itemId;
$hasCustomShowcaseBlocks = stripos($editorialHtml, 'Atributos de Alta') !== false || stripos($editorialHtml, 'Ritual de Preparaci') !== false;
?>

<article class="ambato-product-detail" itemscope itemtype="https://schema.org/Product">
    <meta itemprop="name" content="<?php echo $escape($item->title); ?>">
    <meta itemprop="image" content="<?php echo $escape($imageInfo['url']); ?>">
    <?php if ($leadText !== '') : ?>
        <meta itemprop="description" content="<?php echo $escape($leadText); ?>">
    <?php endif; ?>
    <?php if ($priceValue > 0) : ?>
        <div itemprop="offers" itemscope itemtype="https://schema.org/Offer">
            <meta itemprop="priceCurrency" content="USD">
            <meta itemprop="price" content="<?php echo $escape($priceNumeric); ?>">
            <link itemprop="availability" href="https://schema.org/InStock">
        </div>
    <?php endif; ?>

    <div class="ambato-detail-topbar">
        <nav class="ambato-detail-breadcrumb" aria-label="Ruta de navegación">
            <a href="<?php echo $escape($homeUrl); ?>">Inicio</a>
            <span aria-hidden="true">›</span>
            <a href="<?php echo $escape($catalogUrl); ?>"><?php echo $escape($categoryName); ?></a>
            <span aria-hidden="true">›</span>
            <span aria-current="page"><?php echo $escape($item->title); ?></span>
        </nav>
        <a class="ambato-detail-back" href="<?php echo $escape($catalogUrl); ?>">
            <span aria-hidden="true">←</span> Volver al catálogo
        </a>
    </div>

    <div class="ambato-detail-hero">
        <div class="ambato-detail-gallery">
            <figure class="ambato-detail-media">
                <span class="ambato-product-origin">El Ambateño</span>
                <?php if ($cacaoPercent > 0) : ?>
                    <span class="ambato-cacao-label"><?php echo $cacaoPercent; ?>% cacao</span>
                <?php endif; ?>
                <img
                    src="<?php echo $escape($imageInfo['url']); ?>"
                    alt="<?php echo $escape($imageInfo['alt']); ?>"
                    width="853"
                    height="400"
                    decoding="async">
            </figure>

            <ul class="ambato-detail-highlights" aria-label="Sellos de calidad">
                <li>
                    <svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                        <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
                    </svg>
                    <span>Tostado artesanal desde 1952</span>
                </li>
                <li>
                    <svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                        <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
                    </svg>
                    <span>100% natural, sin conservantes</span>
                </li>
                <li>
                    <svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                        <rect x="1" y="3" width="15" height="13"></rect>
                        <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                        <circle cx="5.5" cy="18.5" r="2.5"></circle>
                        <circle cx="18.5" cy="18.5" r="2.5"></circle>
                    </svg>
                    <span>Envíos a todo el Ecuador</span>
                </li>
            </ul>
        </div>

        <div class="ambato-detail-buybox">
            <p class="ambato-detail-eyebrow">
                <span aria-hidden="true">✦</span> Tradición artesanal desde 1952<?php echo $cacaoPercent > 0 ? ' · Cacao ' . $cacaoPercent . '%' : ''; ?>
            </p>

            <h1 class="ambato-detail-title"><?php echo $escape($item->title); ?></h1>

            <div class="ambato-detail-price-row">
                <?php if ($priceFormatted !== '') : ?>
                    <div class="ambato-detail-price-block">
                        <span class="ambato-detail-price-label">Precio oficial</span>
                        <div class="ambato-detail-price-main">
                            <strong class="ambato-detail-price"><?php echo $escape($priceFormatted); ?></strong>
                            <?php if ($weightLabel !== '') : ?>
                                <span class="ambato-detail-weight">(<?php echo $escape($weightLabel); ?>)</span>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endif; ?>

                <span class="ambato-detail-stock">
                    <span class="ambato-stock-dot" aria-hidden="true"></span>
                    Disponible · Stock fresco
                </span>
            </div>

            <?php if ($leadText !== '') : ?>
                <p class="ambato-detail-lead"><?php echo $escape($leadText); ?></p>
            <?php endif; ?>

            <dl class="ambato-detail-specs">
                <div>
                    <dt>Presentación</dt>
                    <dd><?php echo $escape($presentationFull); ?></dd>
                </div>
                <?php if ($cacaoPercent > 0) : ?>
                    <div>
                        <dt>Pureza</dt>
                        <dd><?php echo $cacaoPercent; ?>% cacao fino de aroma</dd>
                    </div>
                <?php endif; ?>
                <div>
                    <dt>Origen</dt>
                    <dd><?php echo $escape($originLabel); ?></dd>
                </div>
            </dl>

            <div class="ambato-detail-purchase">
                <div class="ambato-detail-qty-row">
                    <div class="ambato-detail-qty-group">
                        <label for="<?php echo $escape($qtyInputId); ?>">Cantidad</label>
                        <div class="control-cantidad-card ambato-detail-stepper">
                            <button type="button" class="btn-qty" data-qty-delta="-1" aria-label="Disminuir cantidad">−</button>
                            <input
                                id="<?php echo $escape($qtyInputId); ?>"
                                name="cantidad"
                                type="number"
                                class="input-qty-card"
                                value="1"
                                min="1"
                                max="99"
                                inputmode="numeric"
                                aria-label="Cantidad de unidades">
                            <button type="button" class="btn-qty" data-qty-delta="1" aria-label="Aumentar cantidad">+</button>
                        </div>
                    </div>

                    <button
                        type="button"
                        class="btn-cafe ambato-detail-add-btn"
                        data-id="<?php echo $itemId; ?>"
                        data-name="<?php echo $escape($item->title); ?>"
                        data-price="<?php echo $escape($priceNumeric); ?>"
                        data-img="<?php echo $escape($imageInfo['path']); ?>"
                        data-presentation="<?php echo $escape($presentationFull); ?>">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.1" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                            <circle cx="9" cy="21" r="1"></circle>
                            <circle cx="20" cy="21" r="1"></circle>
                            <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                        </svg>
                        <span>Agregar al carrito</span>
                    </button>
                </div>

                <a
                    href="<?php echo $escape($waFullUrl); ?>"
                    target="_blank"
                    rel="noopener noreferrer"
                    class="ambato-detail-wa-btn"
                    data-wa-phone="<?php echo $escape($waPhone); ?>"
                    data-product-name="<?php echo $escape($item->title); ?>"
                    data-product-price="<?php echo $escape($priceFormatted); ?>">
                    <svg width="20" height="20" viewBox="0 0 32 32" fill="currentColor" aria-hidden="true">
                        <path d="M16.002 0C7.165 0 0 7.165 0 16.002c0 2.825.738 5.578 2.138 7.998L.069 31.854l8.037-2.108a15.93 15.93 0 007.896 2.083h.007c8.834 0 15.998-7.165 15.998-16.002C32.007 7.165 24.843 0 16.002 0zm0 29.136h-.006a13.2 13.2 0 01-6.726-1.844l-.482-.286-4.992 1.309 1.332-4.866-.314-.5a13.167 13.167 0 01-2.02-7.047c0-7.29 5.932-13.222 13.227-13.222 3.532 0 6.852 1.376 9.35 3.874a13.155 13.155 0 013.868 9.35c0 7.292-5.932 13.232-13.227 13.232zm7.254-9.9c-.397-.2-2.35-1.16-2.715-1.293-.365-.133-.63-.2-.896.2-.266.398-1.03 1.293-1.262 1.558-.232.266-.465.3-.863.1-.397-.2-1.678-.618-3.197-1.972-1.182-1.054-1.98-2.356-2.212-2.754-.233-.398-.025-.613.174-.811.179-.179.398-.465.597-.697.199-.233.266-.398.398-.664.133-.266.066-.498-.033-.697-.1-.199-.896-2.158-1.229-2.955-.323-.777-.652-.671-.896-.684l-.763-.013c-.266 0-.697.1-1.062.498-.365.398-1.394 1.361-1.394 3.32 0 1.959 1.427 3.852 1.626 4.118.2.266 2.809 4.288 6.804 6.013.951.411 1.693.656 2.271.84.954.303 1.823.26 2.51.157.766-.115 2.35-.96 2.682-1.887.332-.927.332-1.721.232-1.887-.1-.166-.365-.266-.763-.465z"/>
                    </svg>
                    <span>Pedir directo por WhatsApp</span>
                </a>
            </div>

            <div class="ambato-detail-trust">
                <span><strong>Entrega nacional:</strong> Quito, Guayaquil, Cuenca y todo el Ecuador</span>
                <span><strong>Atención directa:</strong> Lunes a sábado 08:30–18:00 y pedidos por WhatsApp</span>
            </div>
        </div>
    </div>

    <?php if ($editorialHtml !== '') : ?>
        <section class="ambato-detail-editorial<?php echo $hasCustomShowcaseBlocks ? ' is-rich-blocks' : ''; ?>" aria-label="Descripción y características del producto">
            <?php if (!$hasCustomShowcaseBlocks) : ?>
                <div class="ambato-detail-editorial-head">
                    <span>Detalles de la especialidad</span>
                    <h2>Elaboración, notas y presentación</h2>
                </div>
            <?php endif; ?>
            <div class="ambato-detail-editorial-body">
                <?php echo $editorialHtml; ?>
            </div>
        </section>
    <?php endif; ?>

    <?php if ($prevProduct || $nextProduct) : ?>
        <nav class="ambato-detail-pagination" aria-label="Navegación entre productos">
            <?php if ($prevProduct) :
                $prevUrl = Route::_(RouteHelper::getArticleRoute($prevProduct->id . ':' . $prevProduct->alias, $prevProduct->catid, $prevProduct->language));
            ?>
                <a class="ambato-detail-nav-card is-prev" href="<?php echo $escape($prevUrl); ?>" rel="prev">
                    <span class="ambato-nav-dir">← Producto anterior</span>
                    <strong><?php echo $escape($prevProduct->title); ?></strong>
                </a>
            <?php else : ?>
                <span></span>
            <?php endif; ?>

            <?php if ($nextProduct) :
                $nextUrl = Route::_(RouteHelper::getArticleRoute($nextProduct->id . ':' . $nextProduct->alias, $nextProduct->catid, $nextProduct->language));
            ?>
                <a class="ambato-detail-nav-card is-next" href="<?php echo $escape($nextUrl); ?>" rel="next">
                    <span class="ambato-nav-dir">Siguiente producto →</span>
                    <strong><?php echo $escape($nextProduct->title); ?></strong>
                </a>
            <?php endif; ?>
        </nav>
    <?php endif; ?>

    <?php if (!empty($relatedProducts)) : ?>
        <section class="ambato-detail-related" aria-label="Otras especialidades recomendadas">
            <div class="ambato-detail-related-head">
                <div>
                    <span>Completa tu pedido</span>
                    <h2>Otras especialidades de cacao</h2>
                </div>
                <a href="<?php echo $escape($catalogUrl); ?>">Ver todo el catálogo <span aria-hidden="true">→</span></a>
            </div>

            <div class="ambato-detail-related-grid">
                <?php foreach ($relatedProducts as $rel) :
                    $relPlain = trim(preg_replace('/\s+/', ' ', html_entity_decode(strip_tags($rel->introtext . ' ' . $rel->fulltext), ENT_QUOTES, 'UTF-8')));
                    $relPrice = $extractPrice($relPlain);
                    $relPriceStr = $relPrice > 0 ? '$' . number_format($relPrice, 2, '.', '') : '';
                    $relPriceNum = $relPrice > 0 ? number_format($relPrice, 2, '.', '') : '0.00';
                    $relCacao = $extractCacao((string) $rel->alias, $relPlain);
                    $relImg = $resolveImage($rel->images ?? '', (string) $rel->title);
                    $relUrl = Route::_(RouteHelper::getArticleRoute($rel->id . ':' . $rel->alias, $rel->catid, $rel->language));
                    $relSummary = trim((string) $rel->metadesc) ?: $relPlain;
                    if (function_exists('mb_strlen') && mb_strlen($relSummary, 'UTF-8') > 130) {
                        $relSummary = mb_substr($relSummary, 0, 127, 'UTF-8') . '…';
                    } elseif (strlen($relSummary) > 130) {
                        $relSummary = substr($relSummary, 0, 127) . '…';
                    }
                ?>
                    <article class="ambato-related-card">
                        <a class="ambato-related-media" href="<?php echo $escape($relUrl); ?>">
                            <?php if ($relCacao > 0) : ?>
                                <span class="ambato-related-badge"><?php echo $relCacao; ?>% cacao</span>
                            <?php endif; ?>
                            <img src="<?php echo $escape($relImg['url']); ?>" alt="<?php echo $escape($relImg['alt']); ?>" width="853" height="400" decoding="async">
                        </a>
                        <div class="ambato-related-body">
                            <h3><a href="<?php echo $escape($relUrl); ?>"><?php echo $escape($rel->title); ?></a></h3>
                            <p><?php echo $escape($relSummary); ?></p>
                            <div class="ambato-related-footer">
                                <?php if ($relPriceStr !== '') : ?>
                                    <strong><?php echo $escape($relPriceStr); ?></strong>
                                <?php endif; ?>
                                <a href="<?php echo $escape($relUrl); ?>">Ver producto <span aria-hidden="true">→</span></a>
                            </div>
                            <button
                                type="button"
                                class="btn-cafe ambato-related-add"
                                data-id="<?php echo (int) $rel->id; ?>"
                                data-name="<?php echo $escape($rel->title); ?>"
                                data-price="<?php echo $escape($relPriceNum); ?>"
                                data-img="<?php echo $escape($relImg['path']); ?>"
                                data-presentation="<?php echo $relCacao > 0 ? $relCacao . '% cacao' : ''; ?>">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.1" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                    <circle cx="9" cy="21" r="1"></circle>
                                    <circle cx="20" cy="21" r="1"></circle>
                                    <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                                </svg>
                                <span>Agregar al carrito</span>
                            </button>
                        </div>
                    </article>
                <?php endforeach; ?>
            </div>
        </section>
    <?php endif; ?>
</article>
