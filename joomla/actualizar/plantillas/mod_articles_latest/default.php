<?php
/**
 * Plantilla del carrusel de productos recientes.
 * El actualizador la instala como override de Helix Ultimate.
 */

defined('_JEXEC') or die;

use Joomla\CMS\Router\Route;
use Joomla\CMS\Uri\Uri;

$moduleClass = (string) $params->get('moduleclass_sfx', '');

if (strpos($moduleClass, 'productos-recientes') === false) {
    require JPATH_ROOT . '/plugins/system/helixultimate/overrides/mod_articles_latest/default.php';
    return;
}

$categoryIds = $params->get('catid', []);
$categoryId  = (int) (is_array($categoryIds) ? reset($categoryIds) : $categoryIds);
$catalogUrl  = Route::_('index.php?option=com_content&view=category&id=' . $categoryId);
$trackId     = 'ambato-product-track-' . (int) ($module->id ?? 0);
$list        = is_array($list) ? $list : [];

usort($list, static function ($left, $right) {
    $byDate = strcmp((string) $right->created, (string) $left->created);
    return $byDate !== 0 ? $byDate : ((int) $right->id <=> (int) $left->id);
});
$list = array_slice($list, 0, 5);
?>
<section class="ambato-featured-products" aria-label="Productos agregados recientemente">
    <?php if (empty($list)) : ?>
        <p class="ambato-products-empty">Pronto agregaremos nuevos productos.</p>
    <?php else : ?>
        <div class="ambato-carousel-controls">
            <span class="ambato-carousel-hint">Desliza para descubrir más</span>
            <div class="ambato-carousel-arrows">
                <button type="button" aria-label="Ver productos anteriores" onclick="document.getElementById('<?php echo $trackId; ?>').scrollBy({left:-320,behavior:'smooth'})">‹</button>
                <button type="button" aria-label="Ver productos siguientes" onclick="document.getElementById('<?php echo $trackId; ?>').scrollBy({left:320,behavior:'smooth'})">›</button>
            </div>
        </div>
        <div class="ambato-product-track" id="<?php echo $trackId; ?>" tabindex="0">
            <?php foreach ($list as $item) : ?>
                <?php
                $images = json_decode((string) ($item->images ?? '{}'));
                $imagePath = $images->image_intro ?? $images->image_fulltext ?? 'images/productos/imagen_producto_default.webp';
                $image  = Uri::root() . ltrim((string) $imagePath, '/');
                $itemUrl = (string) ($item->link ?? '#');
                $plain  = trim(preg_replace('/\s+/', ' ', strip_tags((string) ($item->introtext ?? ''))));
                $summary = trim((string) ($item->metadesc ?? '')) ?: $plain;
                if (function_exists('mb_strlen') && mb_strlen($summary, 'UTF-8') > 145) {
                    $summary = mb_substr($summary, 0, 142, 'UTF-8') . '…';
                } elseif (strlen($summary) > 145) {
                    $summary = substr($summary, 0, 142) . '…';
                }
                $price = '';
                $priceValue = '';
                if (preg_match('/\$\s*([0-9]+(?:[.,][0-9]{1,2})?)/', $plain, $priceMatch)) {
                    $priceValue = str_replace(',', '.', $priceMatch[1]);
                    $price = '$' . $priceValue;
                }
                ?>
                <article class="ambato-product-card">
                    <a class="ambato-product-image" href="<?php echo htmlspecialchars($itemUrl, ENT_QUOTES, 'UTF-8'); ?>">
                        <img src="<?php echo htmlspecialchars($image, ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($item->title, ENT_QUOTES, 'UTF-8'); ?>" loading="lazy">
                    </a>
                    <div class="ambato-product-info">
                        <h3><a href="<?php echo htmlspecialchars($itemUrl, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($item->title, ENT_QUOTES, 'UTF-8'); ?></a></h3>
                        <p><?php echo htmlspecialchars($summary, ENT_QUOTES, 'UTF-8'); ?></p>
                        <div class="ambato-product-card-footer">
                            <?php if ($price !== '') : ?><strong><?php echo htmlspecialchars($price, ENT_QUOTES, 'UTF-8'); ?></strong><?php endif; ?>
                            <a href="<?php echo htmlspecialchars($itemUrl, ENT_QUOTES, 'UTF-8'); ?>">Ver producto <span aria-hidden="true">→</span></a>
                        </div>
                        <button
                            type="button"
                            class="btn-dorado-agregar ambato-add-to-cart"
                            data-id="<?php echo (int) $item->id; ?>"
                            data-name="<?php echo htmlspecialchars($item->title, ENT_QUOTES, 'UTF-8'); ?>"
                            data-price="<?php echo htmlspecialchars($priceValue, ENT_QUOTES, 'UTF-8'); ?>"
                            data-img="<?php echo htmlspecialchars((string) $imagePath, ENT_QUOTES, 'UTF-8'); ?>"
                            data-presentation=""
                            onclick="agregarAlCarritoDesdeCard(this)">
                            <span aria-hidden="true">🛒</span> Agregar al carrito
                        </button>
                    </div>
                </article>
            <?php endforeach; ?>
        </div>
        <div class="ambato-catalog-cta">
            <a class="btn-cafe" href="<?php echo htmlspecialchars($catalogUrl, ENT_QUOTES, 'UTF-8'); ?>">Explorar todos los productos</a>
        </div>
    <?php endif; ?>
</section>
