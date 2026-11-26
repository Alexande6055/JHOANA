<?php
/**
 * Catálogo de productos con búsqueda, filtros y paginación propia.
 * El actualizador la instala como override de Helix Ultimate.
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Uri\Uri;
use Joomla\Component\Content\Site\Helper\RouteHelper;

if (($this->category->alias ?? '') !== 'especialidades-cacao') {
    require JPATH_ROOT . '/plugins/system/helixultimate/overrides/com_content/category/default_articles.php';
    return;
}

$app        = Factory::getApplication();
$input      = $app->getInput();
$db         = Factory::getDbo();
$user       = $app->getIdentity();
$categoryId = (int) $this->category->id;
$activeMenu = $app->getMenu()->getActive();
$activeQuery = $activeMenu->query ?? [];
$itemId = (
    ($activeQuery['option'] ?? '') === 'com_content'
    && ($activeQuery['view'] ?? '') === 'category'
    && (int) ($activeQuery['id'] ?? 0) === $categoryId
) ? (int) $activeMenu->id : 0;
$search     = trim($input->getString('producto_buscar', ''));
$search     = function_exists('mb_substr') ? mb_substr($search, 0, 100, 'UTF-8') : substr($search, 0, 100);
$cacao      = $input->getString('producto_cacao', '');
$cacao      = in_array($cacao, ['60', '65', '70', '100'], true) ? (int) $cacao : 0;
$minPrice   = max(0, min(10000, $input->getFloat('precio_min', 0)));
$maxPrice   = max(0, min(10000, $input->getFloat('precio_max', 0)));
$sort       = $input->getCmd('producto_orden', 'recientes');
$sort       = in_array($sort, ['recientes', 'nombre', 'precio_asc', 'precio_desc'], true) ? $sort : 'recientes';
$limit      = $input->getInt('productos_por_pagina', 6);
$limit      = in_array($limit, [6, 12, 24], true) ? $limit : 6;

$query = $db->getQuery(true)
    ->select([
        $db->quoteName('a.id'), $db->quoteName('a.title'), $db->quoteName('a.alias'),
        $db->quoteName('a.catid'), $db->quoteName('a.language'), $db->quoteName('a.images'),
        $db->quoteName('a.introtext'), $db->quoteName('a.fulltext'), $db->quoteName('a.metadesc'),
        $db->quoteName('a.created'), $db->quoteName('a.access'),
    ])
    ->from($db->quoteName('#__content', 'a'))
    ->where($db->quoteName('a.catid') . ' = ' . $categoryId)
    ->where($db->quoteName('a.state') . ' = 1');

$now      = Factory::getDate()->toSql();
$nullDate = $db->getNullDate();
$query->where('(' . $db->quoteName('a.publish_up') . ' IS NULL OR ' . $db->quoteName('a.publish_up') . ' = ' . $db->quote($nullDate) . ' OR ' . $db->quoteName('a.publish_up') . ' <= ' . $db->quote($now) . ')')
    ->where('(' . $db->quoteName('a.publish_down') . ' IS NULL OR ' . $db->quoteName('a.publish_down') . ' = ' . $db->quote($nullDate) . ' OR ' . $db->quoteName('a.publish_down') . ' >= ' . $db->quote($now) . ')');

$viewLevels = array_map('intval', $user->getAuthorisedViewLevels());
$query->where($db->quoteName('a.access') . ' IN (' . implode(',', $viewLevels ?: [1]) . ')');
if ($app->getLanguageFilter()) {
    $language = $db->quote($app->getLanguage()->getTag());
    $query->where('(' . $db->quoteName('a.language') . ' = ' . $language . ' OR ' . $db->quoteName('a.language') . ' = ' . $db->quote('*') . ')');
}

$db->setQuery($query);
$articles = $db->loadObjectList();
$availableCount = count($articles);

$knownCacao = [
    'tableta-70-cacao' => 70,
    'chocolate-naranja-jengibre' => 60,
    'cacao-en-grano-tostado' => 100,
    'pasta-tradicional-chocolate-taza' => 100,
    'chocolate-almendras-sal-marina' => 65,
    'cacao-puro-en-polvo' => 100,
    'bombones-frutas-andinas' => 70,
    'nibs-cacao-caramelizados' => 100,
];
$normalize = static function ($value) {
    $value = html_entity_decode(strip_tags((string) $value), ENT_QUOTES, 'UTF-8');
    if (function_exists('iconv')) {
        $converted = iconv('UTF-8', 'ASCII//TRANSLIT//IGNORE', $value);
        if ($converted !== false) {
            $value = $converted;
        }
    }
    return strtolower($value);
};

$products = [];
foreach ($articles as $article) {
    $plain = trim(preg_replace('/\s+/', ' ', html_entity_decode(strip_tags($article->introtext . ' ' . $article->fulltext), ENT_QUOTES, 'UTF-8')));
    $searchText = $normalize($article->title . ' ' . $article->metadesc . ' ' . $plain);
    $normalizedSearch = $normalize($search);
    if ($normalizedSearch !== '' && strpos($searchText, $normalizedSearch) === false) {
        continue;
    }

    $price = 0.0;
    if (preg_match('/\$\s*([0-9]+(?:[.,][0-9]{1,2})?)/', $plain, $priceMatch)) {
        $price = (float) str_replace(',', '.', $priceMatch[1]);
    }

    $percent = $knownCacao[$article->alias] ?? 0;
    if (!$percent && preg_match('/(?<!\d)(\d{2,3})\s*%[^.]{0,60}\bcacao\b/iu', $plain, $percentMatch)) {
        $percent = (int) $percentMatch[1];
    }
    if ($cacao && $percent !== $cacao) {
        continue;
    }
    if ($minPrice > 0 && $price < $minPrice) {
        continue;
    }
    if ($maxPrice > 0 && $price > $maxPrice) {
        continue;
    }

    $article->catalogPrice = $price;
    $article->catalogCacao = $percent;
    $article->catalogExcerpt = trim((string) $article->metadesc) ?: $plain;
    $products[] = $article;
}

usort($products, static function ($left, $right) use ($sort) {
    if ($sort === 'nombre') {
        return strcasecmp($left->title, $right->title);
    }
    if ($sort === 'precio_asc') {
        return $left->catalogPrice <=> $right->catalogPrice;
    }
    if ($sort === 'precio_desc') {
        return $right->catalogPrice <=> $left->catalogPrice;
    }
    return strcmp($right->created, $left->created);
});

$total       = count($products);
$pageCount   = max(1, (int) ceil($total / $limit));
$limitStart  = $input->getUint('limitstart', 0);
$limitStart  = min((int) (floor($limitStart / $limit) * $limit), max(0, ($pageCount - 1) * $limit));
$pageProducts = array_slice($products, $limitStart, $limit);
$request     = 'index.php?option=com_content&view=category&id=' . $categoryId;
if ($itemId) {
    $request .= '&Itemid=' . $itemId;
}
$formAction = Route::_($request);
$makePageUrl = static function ($offset) use ($request, $search, $cacao, $minPrice, $maxPrice, $sort, $limit) {
    $vars = [
        'limitstart' => (int) $offset,
        'productos_por_pagina' => (int) $limit,
        'producto_orden' => $sort,
    ];
    if ($search !== '') $vars['producto_buscar'] = $search;
    if ($cacao) $vars['producto_cacao'] = $cacao;
    if ($minPrice > 0) $vars['precio_min'] = $minPrice;
    if ($maxPrice > 0) $vars['precio_max'] = $maxPrice;
    return Route::_($request . '&' . http_build_query($vars));
};
?>
<section class="ambato-catalog" aria-label="Catálogo de productos">
    <header class="ambato-catalog-hero">
        <div class="ambato-catalog-hero-copy">
            <p class="ambato-catalog-eyebrow"><span></span> Chocolate artesanal · Ambato</p>
            <h2>Tradición que se comparte</h2>
            <p>Explora nuestras especialidades de cacao fino de aroma, elaboradas con recetas familiares y el sabor de nuestra tierra.</p>
        </div>
        <div class="ambato-catalog-heritage" aria-label="Tradición chocolatera desde 1952">
            <span>Elaboración artesanal</span>
            <strong>Desde 1952</strong>
            <small>Hecho en Ambato, Ecuador</small>
        </div>
    </header>

    <form class="ambato-catalog-filters" action="<?php echo htmlspecialchars($formAction, ENT_QUOTES, 'UTF-8'); ?>" method="get">
        <input type="hidden" name="option" value="com_content">
        <input type="hidden" name="view" value="category">
        <input type="hidden" name="id" value="<?php echo $categoryId; ?>">
        <?php if ($itemId) : ?><input type="hidden" name="Itemid" value="<?php echo $itemId; ?>"><?php endif; ?>
        <div class="ambato-filter-panel-head">
            <div>
                <span>Encuentra tu favorito</span>
                <h2>Filtra el catálogo</h2>
            </div>
            <a class="ambato-filter-clear" href="<?php echo htmlspecialchars(Route::_($request), ENT_QUOTES, 'UTF-8'); ?>">Limpiar filtros</a>
        </div>
        <div class="ambato-filter-search">
            <label for="producto_buscar">Buscar por producto o ingrediente</label>
            <div class="ambato-search-control">
                <svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="10.8" cy="10.8" r="6.8"></circle><path d="m16 16 4.5 4.5"></path></svg>
                <input id="producto_buscar" type="search" name="producto_buscar" value="<?php echo htmlspecialchars($search, ENT_QUOTES, 'UTF-8'); ?>" placeholder="Ej.: chocolate, naranja, cacao">
            </div>
        </div>
        <div class="ambato-filter-controls">
            <div>
                <label for="producto_cacao">Porcentaje de cacao</label>
                <select id="producto_cacao" name="producto_cacao">
                    <option value="">Todos los porcentajes</option>
                    <?php foreach ([60, 65, 70, 100] as $option) : ?>
                        <option value="<?php echo $option; ?>"<?php echo $cacao === $option ? ' selected' : ''; ?>><?php echo $option; ?>% cacao</option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div>
                <label for="precio_min">Precio desde</label>
                <div class="ambato-price-input"><span>$</span><input id="precio_min" type="number" name="precio_min" min="0" step="0.25" value="<?php echo $minPrice > 0 ? htmlspecialchars((string) $minPrice, ENT_QUOTES, 'UTF-8') : ''; ?>" placeholder="0.00"></div>
            </div>
            <div>
                <label for="precio_max">Precio hasta</label>
                <div class="ambato-price-input"><span>$</span><input id="precio_max" type="number" name="precio_max" min="0" step="0.25" value="<?php echo $maxPrice > 0 ? htmlspecialchars((string) $maxPrice, ENT_QUOTES, 'UTF-8') : ''; ?>" placeholder="Sin límite"></div>
            </div>
            <div>
                <label for="producto_orden">Ordenar por</label>
                <select id="producto_orden" name="producto_orden">
                    <option value="recientes"<?php echo $sort === 'recientes' ? ' selected' : ''; ?>>Más recientes</option>
                    <option value="nombre"<?php echo $sort === 'nombre' ? ' selected' : ''; ?>>Nombre</option>
                    <option value="precio_asc"<?php echo $sort === 'precio_asc' ? ' selected' : ''; ?>>Menor precio</option>
                    <option value="precio_desc"<?php echo $sort === 'precio_desc' ? ' selected' : ''; ?>>Mayor precio</option>
                </select>
            </div>
        </div>
        <div class="ambato-filter-actions">
            <span class="ambato-filter-available"><?php echo $availableCount; ?> productos en la colección</span>
            <div class="ambato-items-per-page">
                <label for="productos_por_pagina">Mostrar</label>
                <select id="productos_por_pagina" name="productos_por_pagina">
                    <?php foreach ([6, 12, 24] as $option) : ?>
                        <option value="<?php echo $option; ?>"<?php echo $limit === $option ? ' selected' : ''; ?>><?php echo $option; ?></option>
                    <?php endforeach; ?>
                </select>
                <span>por página</span>
            </div>
            <button type="submit" class="btn-cafe ambato-filter-submit">Ver productos</button>
        </div>
    </form>

    <div class="ambato-catalog-results" aria-live="polite">
        <div class="ambato-results-bar">
            <div><span class="ambato-results-kicker">Nuestra selección</span><strong><?php echo $total; ?> <?php echo $total === 1 ? 'producto' : 'productos'; ?></strong></div>
            <?php if ($total > 0) : ?><p>Mostrando <strong><?php echo $limitStart + 1; ?>–<?php echo min($limitStart + $limit, $total); ?></strong> de <?php echo $total; ?></p><?php endif; ?>
        </div>
        <?php if ($pageProducts) : ?>
            <div class="ambato-catalog-grid">
                <?php foreach ($pageProducts as $article) : ?>
                    <?php
                    $images = json_decode((string) ($article->images ?? '{}'));
                    $imagePath = $images->image_intro ?? $images->image_fulltext ?? 'images/productos/imagen_producto_default.webp';
                    $image  = Uri::root() . ltrim((string) $imagePath, '/');
                    $excerpt = trim(preg_replace('/\s+/', ' ', $article->catalogExcerpt));
                    if (function_exists('mb_strlen') && mb_strlen($excerpt, 'UTF-8') > 150) {
                        $excerpt = mb_substr($excerpt, 0, 147, 'UTF-8') . '…';
                    } elseif (strlen($excerpt) > 150) {
                        $excerpt = substr($excerpt, 0, 147) . '…';
                    }
                    $articleUrl = Route::_(RouteHelper::getArticleRoute($article->id . ':' . $article->alias, $article->catid, $article->language));
                    ?>
                    <article class="ambato-catalog-card">
                        <div class="ambato-catalog-card-media">
                            <a class="ambato-catalog-card-image" href="<?php echo htmlspecialchars($articleUrl, ENT_QUOTES, 'UTF-8'); ?>">
                                <img src="<?php echo htmlspecialchars($image, ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($article->title, ENT_QUOTES, 'UTF-8'); ?>" loading="lazy">
                            </a>
                            <span class="ambato-product-origin">El Ambateño</span>
                            <?php if ($article->catalogCacao) : ?><span class="ambato-cacao-label"><?php echo (int) $article->catalogCacao; ?>% cacao</span><?php endif; ?>
                        </div>
                        <div class="ambato-catalog-card-body">
                            <h2><a href="<?php echo htmlspecialchars($articleUrl, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($article->title, ENT_QUOTES, 'UTF-8'); ?></a></h2>
                            <p><?php echo htmlspecialchars($excerpt, ENT_QUOTES, 'UTF-8'); ?></p>
                            <div class="ambato-catalog-card-footer">
                                <?php if ($article->catalogPrice > 0) : ?><div class="ambato-catalog-price"><span>Precio</span><strong>$<?php echo number_format($article->catalogPrice, 2, '.', ''); ?></strong></div><?php endif; ?>
                                <a href="<?php echo htmlspecialchars($articleUrl, ENT_QUOTES, 'UTF-8'); ?>">Ver detalle <span aria-hidden="true">→</span></a>
                            </div>
                            <button
                                type="button"
                                class="btn-dorado-agregar ambato-add-to-cart"
                                data-id="<?php echo (int) $article->id; ?>"
                                data-name="<?php echo htmlspecialchars($article->title, ENT_QUOTES, 'UTF-8'); ?>"
                                data-price="<?php echo number_format($article->catalogPrice, 2, '.', ''); ?>"
                                data-img="<?php echo htmlspecialchars((string) $imagePath, ENT_QUOTES, 'UTF-8'); ?>"
                                data-presentation="<?php echo $article->catalogCacao ? (int) $article->catalogCacao . '% cacao' : ''; ?>"
                                onclick="agregarAlCarritoDesdeCard(this)">
                                <span aria-hidden="true">🛒</span> Agregar al carrito
                            </button>
                        </div>
                    </article>
                <?php endforeach; ?>
            </div>
        <?php else : ?>
            <div class="ambato-empty-state">
                <span aria-hidden="true">✦</span>
                <h2>No encontramos productos con esos filtros</h2>
                <p>Prueba con otro término o limpia los filtros para ver toda la colección.</p>
                <a class="btn-cafe" href="<?php echo htmlspecialchars(Route::_($request), ENT_QUOTES, 'UTF-8'); ?>">Ver toda la colección</a>
            </div>
        <?php endif; ?>
    </div>

    <?php if ($pageCount > 1) : ?>
        <nav class="ambato-catalog-pagination" aria-label="Paginación del catálogo">
            <?php if ($limitStart > 0) : ?><a href="<?php echo htmlspecialchars($makePageUrl($limitStart - $limit), ENT_QUOTES, 'UTF-8'); ?>" rel="prev">Anterior</a><?php endif; ?>
            <?php for ($page = 0; $page < $pageCount; $page++) : ?>
                <?php if (abs($page - (int) floor($limitStart / $limit)) <= 2 || $page === 0 || $page === $pageCount - 1) : ?>
                    <?php if ($page === (int) floor($limitStart / $limit)) : ?>
                        <span class="is-current" aria-current="page"><?php echo $page + 1; ?></span>
                    <?php else : ?>
                        <a href="<?php echo htmlspecialchars($makePageUrl($page * $limit), ENT_QUOTES, 'UTF-8'); ?>"><?php echo $page + 1; ?></a>
                    <?php endif; ?>
                <?php elseif (abs($page - (int) floor($limitStart / $limit)) === 3) : ?>
                    <span aria-hidden="true">…</span>
                <?php endif; ?>
            <?php endfor; ?>
            <?php if ($limitStart + $limit < $total) : ?><a href="<?php echo htmlspecialchars($makePageUrl($limitStart + $limit), ENT_QUOTES, 'UTF-8'); ?>" rel="next">Siguiente</a><?php endif; ?>
        </nav>
    <?php endif; ?>
</section>
