<?php
/**
 * Actualizador de Navegación, Rutas de Menú y Enrutamiento Anclas SPA / Multi-página
 * Para Chocolate Artesanal de Ambato (Joomla 5/6 + Helix Ultimate)
 */

define('_JEXEC', 1);
require_once dirname(__DIR__) . '/configuration.php';
$config = new JConfig();

$host = $config->host;
$port = 3306;
if (strpos($host, ':') !== false) {
    list($host, $port) = explode(':', $host);
}

try {
    $pdo = new PDO("mysql:host={$host};port={$port};dbname={$config->db};charset=utf8mb4", $config->user, $config->password, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage() . "\n");
}

$prefix = $config->dbprefix;

echo "=== 1. ACTUALIZAR ENLACES DE MENÚ EN LA BASE DE DATOS ===\n";

// Actualizar enlaces de ancla para que apunten de manera canónica a /joomla/#seccion
$menus = [
    116 => '/joomla/#productos',
    117 => '/joomla/#historia',
    118 => '/joomla/#contacto'
];

$stmtMenu = $pdo->prepare("UPDATE `{$prefix}menu` SET `link` = :link WHERE `id` = :id");
foreach ($menus as $id => $link) {
    $stmtMenu->execute([':link' => $link, ':id' => $id]);
    echo "  - Menú ID {$id} actualizado a '{$link}'\n";
}

echo "\n=== 2. CREAR / ACTUALIZAR SCRIPT JS DE ENRUTAMIENTO DE ANCLAS (custom.js) ===\n";

$customJs = <<<'JS'
/**
 * Enrutador de Navegación y Smooth Scroll - Chocolate Artesanal de Ambato
 * Permite que los enlaces de menú (#productos, #historia, #contacto)
 * funcionen tanto en la portada One-Page como desde cualquier página interna
 * (artículos de producto, catálogo com_content, etc.).
 */
(function() {
  'use strict';

  function isHome() {
    var p = window.location.pathname;
    return (
      p === '/joomla/' ||
      p === '/joomla/index.php' ||
      p === '/joomla' ||
      p === '/' ||
      p === '/index.php'
    );
  }

  function closeOffcanvas() {
    var init = document.querySelector('.offcanvas-init');
    if (init && init.classList.contains('offcanvas-active')) {
      init.classList.remove('offcanvas-active', 'full-offcanvas');
      document.body.style.overflow = '';
      var menu = document.querySelector('.offcanvas-menu');
      if (menu) {
        menu.setAttribute('inert', '');
        menu.setAttribute('tabindex', '-1');
      }
    }
  }

  function smoothScrollTo(id) {
    var el = document.getElementById(id);
    if (!el) return false;
    var header = document.getElementById('sp-header');
    var headerHeight = header ? header.offsetHeight : 80;
    var y = el.getBoundingClientRect().top + window.pageYOffset - headerHeight - 15;
    window.scrollTo({
      top: Math.max(0, y),
      behavior: 'smooth'
    });
    if (window.history && window.history.pushState) {
      window.history.pushState(null, null, '#' + id);
    }
    return true;
  }

  // Interceptar clics en enlaces de ancla del menú, sidebar y botones
  document.addEventListener('click', function(e) {
    var a = e.target.closest('a');
    if (!a) return;

    var href = a.getAttribute('href');
    if (!href) return;

    var anchor = null;
    if (href.startsWith('#') && href.length > 1) {
      anchor = href.substring(1);
    } else if (href.indexOf('#') !== -1) {
      var parts = href.split('#');
      var path = parts[0];
      var hash = parts[1];
      if (
        path === '' ||
        path === '/joomla/' ||
        path === '/joomla/index.php' ||
        path === '/joomla' ||
        path === '/' ||
        path === '/index.php'
      ) {
        anchor = hash;
      }
    }

    if (!anchor) return;

    var knownSections = ['inicio', 'productos', 'historia', 'beneficios', 'contacto'];
    if (knownSections.indexOf(anchor) === -1) return;

    // Si estamos en la página de inicio
    if (isHome()) {
      e.preventDefault();
      closeOffcanvas();
      smoothScrollTo(anchor);
    } else {
      // Si estamos en una página interna (detalle de producto, catálogo, etc.)
      e.preventDefault();
      closeOffcanvas();
      window.location.href = '/joomla/#' + anchor;
    }
  });

  // Si se entra a la página de inicio con un hash en la URL, desplazar suavemente al elemento
  if (isHome() && window.location.hash) {
    var targetHash = window.location.hash.substring(1);
    window.addEventListener('load', function() {
      setTimeout(function() {
        smoothScrollTo(targetHash);
      }, 350);
    });
  }

  // Asegurar que al hacer clic en cualquier enlace dentro del menú offcanvas se cierre el drawer
  document.addEventListener('click', function(e) {
    var offcanvasLink = e.target.closest('.offcanvas-menu a');
    if (offcanvasLink) {
      setTimeout(closeOffcanvas, 200);
    }
  });

})();
JS;

$jsFile = dirname(__DIR__) . '/templates/shaper_helixultimate/js/custom.js';
if (@file_put_contents($jsFile, $customJs) !== false) {
    echo "  - OK: custom.js guardado exitosamente en templates/shaper_helixultimate/js/custom.js\n";
} else {
    echo "  - AVISO: No se pudo escribir directamente en {$jsFile} (se cargará mediante el módulo 112)\n";
}

echo "\n=== 3. ACTUALIZAR ESTILOS CSS (custom.css) ===\n";

$cssFile = dirname(__DIR__) . '/templates/shaper_helixultimate/css/custom.css';
$currentCss = file_exists($cssFile) ? file_get_contents($cssFile) : '';

$navExtraCss = <<<'CSS'

/* ==========================================================================
   ENRUTAMIENTO Y OFFSET DE ANCLAS PARA HEADER STICKY
   ========================================================================== */
html {
  scroll-behavior: smooth;
}

#inicio,
#productos,
#historia,
#beneficios,
#contacto,
.seccion-hero,
.ambato-products-intro,
.seccion-historia,
.seccion-beneficios,
.seccion-contacto {
  scroll-margin-top: 90px;
}

/* Botón Volver al Catálogo desde fichas de producto */
.btn-volver-catalogo {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background-color: transparent;
  color: #3B2314 !important;
  border: 1.5px solid #3B2314;
  padding: 8px 18px;
  border-radius: 8px;
  font-size: 0.92rem;
  font-weight: 600;
  text-decoration: none !important;
  transition: all 0.25s ease;
  margin-top: 15px;
}

.btn-volver-catalogo:hover {
  background-color: #3B2314;
  color: #F5EBDD !important;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(59, 35, 20, 0.15);
}

/* Offcanvas Sidebar Menú - Efectos y espaciado */
.offcanvas-menu .mod-menu > li > a {
  padding: 12px 18px;
  font-weight: 600;
  color: #3B2314;
  border-radius: 8px;
  transition: all 0.2s ease;
}

.offcanvas-menu .mod-menu > li > a:hover,
.offcanvas-menu .mod-menu > li.active > a {
  background-color: #F5EBDD;
  color: #C19A3D;
}
CSS;

if (strpos($currentCss, 'scroll-margin-top: 90px') === false) {
    $newCss = $currentCss . "\n" . $navExtraCss;
    if (@file_put_contents($cssFile, $newCss) !== false) {
        echo "  - OK: custom.css actualizado con estilos de ancla y botón volver\n";
    } else {
        echo "  - AVISO: No se pudo escribir directamente en custom.css\n";
    }
} else {
    echo "  - custom.css ya incluye los estilos de ancla\n";
}

echo "\n=== 4. INTEGRAR SCRIPT DE NAVEGACIÓN EN MÓDULO 112 (CARRITO) ===\n";

$modStmt = $pdo->prepare("SELECT `id`, `content` FROM `{$prefix}modules` WHERE `id` = 112 LIMIT 1");
$modStmt->execute();
$mod = $modStmt->fetch();

if ($mod) {
    $content = $mod['content'];
    if (strpos($content, 'Enrutador de Navegación y Smooth Scroll') === false) {
        $injectJs = "\n<script>\n" . $customJs . "\n</script>\n";
        $newContent = $content . $injectJs;
        $uMod = $pdo->prepare("UPDATE `{$prefix}modules` SET `content` = :content WHERE `id` = 112");
        $uMod->execute([':content' => $newContent]);
        echo "  - OK: Módulo 112 enriquecido con el enrutador de anclas para todas las páginas.\n";
    } else {
        echo "  - Módulo 112 ya contiene el enrutador de anclas.\n";
    }
}

echo "\n=== 5. ACTUALIZAR LAS FICHAS DE PRODUCTOS EN COM_CONTENT ===\n";

// Definición de productos con datos completos
$productos = [
    1 => [
        'title' => 'Tableta 70% Cacao Fino de Aroma',
        'alias' => 'tableta-70-cacao',
        'precio' => '4.50',
        'presentacion' => '100g (70% Cacao)',
        'descripcion_corta' => 'Barra de chocolate oscuro artesanal elaborada con cacao nacional fino de aroma. Equilibrio perfecto entre notas frutales, tostado en leña y amargor elegante.',
        'descripcion_larga' => 'Elaborado con granos seleccionados en fincas agroecológicas de la cuenca alta del río Napo y tostados artesanalmente en paila tradicional en Ambato. No contiene lecitina ni grasas añadidas.',
        'maridaje' => 'Café de altura, quesos curados o disolver en leche hirviendo.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ],
    2 => [
        'title' => 'Chocolate con Naranja & Jengibre',
        'alias' => 'chocolate-naranja-jengibre',
        'precio' => '5.00',
        'presentacion' => '100g (60% Cacao)',
        'descripcion_corta' => 'Fusión aromática vibrante que combina chocolate semiamargo al 60% con cáscara de naranja confitada al sol y el toque cálido y especiado del jengibre fresco.',
        'descripcion_larga' => 'Una experiencia sensorial que equilibra el dulzor natural de los cítricos con la potencia digestiva y estimulante del jengibre, envueltos en chocolate oscuro sedoso.',
        'maridaje' => 'Té verde, infusiones herbales o como digestivo tras las comidas.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ],
    3 => [
        'title' => 'Cacao en Grano Tostado en Paila',
        'alias' => 'cacao-en-grano-tostado',
        'precio' => '6.00',
        'presentacion' => '250g (100% Cacao)',
        'descripcion_corta' => 'Granos enteros de cacao fino de aroma seleccionados a mano, fermentados a punto óptimo y tostados a fuego lento en paila de cobre tradicional en Ambato.',
        'descripcion_larga' => 'Conserva la cáscara crujiente que se retira fácilmente. Producto puro rico en polifenoles, magnesio y energía natural para consumir como snack saludable o preparar infusiones.',
        'maridaje' => 'Frutos secos, granola matutina o yogurt natural.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ],
    4 => [
        'title' => 'Pasta Tradicional de Chocolate de Taza (100% Cacao)',
        'alias' => 'pasta-tradicional-chocolate-taza',
        'precio' => '4.00',
        'presentacion' => '200g (100% Cacao)',
        'descripcion_corta' => 'La clásica pasta pura sin azúcar para preparar el tradicional chocolate caliente con espuma de molinillo de madera, como en las mañanas de Ambato desde 1952.',
        'descripcion_larga' => '100% licor de cacao prensado en moldes tradicionales. Solo ralle una porción, añádala a leche hirviendo con canela y clavo de olor, y bata hasta lograr espuma espesa y sedosa.',
        'maridaje' => 'Pan de Ambato, queso de hoja y humitas calientes.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ],
    5 => [
        'title' => 'Chocolate con Almendras Tostadas y Sal Marina',
        'alias' => 'chocolate-almendras-sal-marina',
        'precio' => '5.50',
        'presentacion' => '100g (65% Cacao)',
        'descripcion_corta' => 'Chocolate al 65% coronado con trozos de almendras tostadas y cristales de sal marina que intensifican las notas aromáticas del cacao.',
        'descripcion_larga' => 'El contraste perfecto entre el crujiente de las almendras enteras tostadas en su punto justo y el toque mineral de la sal marina, que resalta las notas de toffee y madera noble del cacao.',
        'maridaje' => 'Vino tinto joven, cerveza artesanal negra o café expreso.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ],
    6 => [
        'title' => 'Cacao Puro en Polvo Desgrasado',
        'alias' => 'cacao-puro-en-polvo',
        'precio' => '4.80',
        'presentacion' => '250g (100% Cacao)',
        'descripcion_corta' => 'Cacao 100% puro en polvo desgrasado mecánicamente en frío, ideal para batidos energéticos, repostería saludable y desayunos fitness.',
        'descripcion_larga' => 'Sin alcalinizar (no dutched), preservando todos sus flavonoides y antioxidantes naturales. Granulado ultrafino que se disuelve con facilidad en líquidos fríos o calientes.',
        'maridaje' => 'Batidos de avena y plátano, brownies keto o bowls proteicos.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ],
    7 => [
        'title' => 'Bombones Rellenos de Frutas Andinas (Caja x6)',
        'alias' => 'bombones-frutas-andinas',
        'precio' => '7.50',
        'presentacion' => 'Caja x6 unidades (70% Cacao)',
        'descripcion_corta' => 'Bombones con fina cobertura de cacao al 70% y rellenos fluidos de reducción natural de maracuyá, uvilla andina y mora de Castilla de la provincia de Tungurahua.',
        'descripcion_larga' => 'Caja de regalo artesanal con 6 bombones pintados a mano con manteca de cacao coloreada naturalmente. Cada bocado libera una explosión ácida y frutal que armoniza con el amargor del cacao.',
        'maridaje' => 'Champán, vinos espumosos o como detalle en celebraciones.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ],
    8 => [
        'title' => 'Nibs de Cacao Caramelizados con Panela',
        'alias' => 'nibs-cacao-caramelizados',
        'precio' => '4.00',
        'presentacion' => 'Bolsa 150g (100% Cacao con Panela)',
        'descripcion_corta' => 'Trozos crujientes de grano de cacao tostado ligeramente glaseados con miel de panela orgánica. El topping perfecto para bowls, yogur y ensaladas.',
        'descripcion_larga' => 'Snack crujiente 100% saludable y libre de gluten. Mantiene la textura natural del grano con un toque dulce caramelo que fascina a grandes y chicos.',
        'maridaje' => 'Yogur griego, ensaladas de frutas, bowls de açai o como snack directo.',
        'img' => 'images/productos/imagen_producto_default.avif'
    ]
];

$updateArt = $pdo->prepare("UPDATE `{$prefix}content` SET `introtext` = :intro, `fulltext` = :full WHERE `id` = :id");

foreach ($productos as $id => $p) {
    $waMsg = urlencode("Hola, deseo pedir {$p['title']} ($" . $p['precio'] . ")");
    
    // Tarjeta del producto con Stepper, Agregar al Carrito, WhatsApp y Enlace de Retorno
    $tarjetaHtml = <<<HTML
<div class="producto-tarjeta-joomla" style="background:#FAF5EE; border:1px solid rgba(193,154,61,0.25); border-radius:12px; padding:24px; margin-bottom:24px;">
    <div class="precio-badge" style="font-size:1.6rem; font-weight:700; color:#C19A3D; margin-bottom:8px;">
        \${$p['precio']} <small style="font-size:0.95rem; color:#6C4A33; font-weight:500;">({$p['presentacion']})</small>
    </div>
    <p class="lead" style="color:#4A3528; font-size:1.15rem; line-height:1.6; margin-bottom:18px;">
        {$p['descripcion_corta']}
    </p>
    
    <!-- Controles de Compra -->
    <div style="display:flex; gap:12px; align-items:center; flex-wrap:wrap; margin:18px 0 12px 0;">
        <div class="control-cantidad-card">
            <button type="button" class="btn-qty" onclick="window.cambiarQtyCard(this, -1)" aria-label="Disminuir">-</button>
            <input type="text" class="input-qty-card" value="1" readonly aria-label="Cantidad">
            <button type="button" class="btn-qty" onclick="window.cambiarQtyCard(this, 1)" aria-label="Aumentar">+</button>
        </div>
        <button 
            type="button" 
            class="btn-dorado-agregar" 
            data-id="{$id}"
            data-name="{$p['title']}"
            data-price="{$p['precio']}"
            data-img="{$p['img']}"
            data-presentation="{$p['presentacion']}"
            onclick="window.agregarAlCarritoDesdeCard(this)">
            🛒 Agregar al Carrito
        </button>
        <a href="https://wa.me/593962660236?text={$waMsg}" target="_blank" class="btn" style="background:#25D366; color:#FFF; padding:10px 20px; border-radius:8px; font-weight:bold; text-decoration:none; display:inline-flex; align-items:center; gap:8px;">
            Pedir por WhatsApp
        </a>
    </div>

    <!-- Enlace de regreso al catálogo / landing -->
    <div style="margin-top:16px; padding-top:14px; border-top:1px solid rgba(193,154,61,0.2);">
        <a href="/joomla/#productos" class="btn-volver-catalogo">
            ← Volver al Catálogo de Productos
        </a>
    </div>
</div>
HTML;

    $fullExtraHtml = <<<HTML
<hr style="border:0; border-top:1px solid #E0D3C1; margin:25px 0;">
<h3>Detalles del Producto y Elaboración</h3>
<p>{$p['descripcion_larga']}</p>
<h4>Presentación:</h4>
<p>{$p['presentacion']}</p>
<h4>Sugerencia de Maridaje / Consumo:</h4>
<p>{$p['maridaje']}</p>
HTML;

    // Guardar introtext limpio y fulltext con los detalles adicionales
    $updateArt->execute([
        ':intro' => $tarjetaHtml,
        ':full'  => $fullExtraHtml,
        ':id'    => $id
    ]);
    echo "  - Artículo ID {$id} ({$p['alias']}) actualizado con éxito.\n";
}

echo "\n=== ACTUALIZACIÓN DE NAVEGACIÓN Y PRODUCTOS COMPLETADA CON ÉXITO ===\n";
