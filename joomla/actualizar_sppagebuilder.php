<?php
/**
 * Actualizador de SP Page Builder - Chocolate Artesanal de Ambato
 * Actualiza la página de inicio (id=1) con:
 * - Imágenes generadas en alta resolución (Hero y Tradición en Paila)
 * - Carrusel dinámico de los 5 productos agregados más recientemente
 * - Catálogo independiente con búsqueda, filtros y paginación
 * - Eliminación de títulos de fila redundantes
 * - Integración One-Page con anclas (#inicio, #productos, #historia, #contacto)
 */

define('_JEXEC', 1);
require_once __DIR__ . '/configuration.php';
$config = new JConfig();

// Instalar los overrides de Helix antes de abrir la base de datos, para que
// también se puedan desplegar por Apache con los permisos del usuario web.
$templateSources = [
    __DIR__ . '/actualizar/plantillas/mod_articles_latest/default.php' => __DIR__ . '/templates/shaper_helixultimate/overrides/mod_articles_latest/default.php',
    __DIR__ . '/actualizar/plantillas/com_content/category/default_articles.php' => __DIR__ . '/templates/shaper_helixultimate/overrides/com_content/category/default_articles.php',
];
foreach ($templateSources as $source => $destination) {
    if (!is_file($source)) {
        die("Falta el archivo de plantilla: {$source}\n");
    }
    $directory = dirname($destination);
    if (!is_dir($directory) && !mkdir($directory, 0755, true) && !is_dir($directory)) {
        die("No se pudo preparar la carpeta de plantilla: {$directory}\n");
    }
    if (!copy($source, $destination)) {
        die("No se pudo instalar la plantilla de Joomla: {$destination}\n");
    }
}

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

// Obtener datos de la página
$stmt = $pdo->query("SELECT id, text FROM `{$prefix}sppagebuilder` WHERE `id` = 1");
$row = $stmt->fetch();
if (!$row) {
    die("No se encontró la página id=1 de SP Page Builder.\n");
}

// Categoría que contiene los artículos de producto.
$catStmt = $pdo->prepare("SELECT `id` FROM `{$prefix}categories` WHERE `extension` = 'com_content' AND `alias` = 'especialidades-cacao' LIMIT 1");
$catStmt->execute();
$category = $catStmt->fetch();
if (!$category) {
    die("No se encontró la categoría de productos 'especialidades-cacao'.\n");
}
$productosCategoryId = (int) $category['id'];

// Crear o actualizar el módulo dinámico que alimenta el carrusel.
$moduleTitle = 'Carrusel - últimos productos';
$moduleParams = json_encode([
    'catid' => [$productosCategoryId],
    // Traer candidatos suficientes para desempatar productos agregados el mismo segundo.
    'count' => 100,
    'show_featured' => '',
    'ordering' => 'c_dsc',
    'user_id' => '0',
    'layout' => 'default',
    'moduleclass_sfx' => ' productos-recientes',
    'cache' => 0,
    'cache_time' => 900,
    'module_tag' => 'div',
    'bootstrap_size' => 0,
    'header_tag' => 'h3',
    'style' => 'none',
], JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
$moduleFind = $pdo->prepare("SELECT `id` FROM `{$prefix}modules` WHERE `module` = 'mod_articles_latest' AND `title` = :title AND `client_id` = 0 LIMIT 1");
$moduleFind->execute([':title' => $moduleTitle]);
$existingModule = $moduleFind->fetch();
$moduleOrdering = (int) $pdo->query("SELECT COALESCE(MAX(`ordering`), 0) + 1 FROM `{$prefix}modules` WHERE `position` = 'sppagebuilder' AND `client_id` = 0")->fetchColumn();
$moduleValues = [
    'title' => $moduleTitle,
    'note' => 'Módulo de cinco productos recientes usado en la portada.',
    'content' => '',
    'ordering' => $moduleOrdering,
    'position' => 'sppagebuilder',
    'published' => 1,
    'module' => 'mod_articles_latest',
    'access' => 1,
    'showtitle' => 0,
    'params' => $moduleParams,
    'client_id' => 0,
    'language' => '*',
];
$moduleColumns = $pdo->query("SHOW COLUMNS FROM `{$prefix}modules`")->fetchAll(PDO::FETCH_COLUMN);
$moduleValues = array_intersect_key($moduleValues, array_flip($moduleColumns));
if ($existingModule) {
    $moduleId = (int) $existingModule['id'];
    $assignments = [];
    foreach (array_keys($moduleValues) as $column) {
        $assignments[] = "`{$column}` = :{$column}";
    }
    $moduleValues['id'] = $moduleId;
    $moduleUpdate = $pdo->prepare("UPDATE `{$prefix}modules` SET " . implode(', ', $assignments) . " WHERE `id` = :id");
    $moduleUpdate->execute(array_combine(array_map(static fn($key) => ':' . $key, array_keys($moduleValues)), array_values($moduleValues)));
} else {
    $insertValues = $moduleValues + [
        'asset_id' => 0,
        'checked_out' => null,
        'checked_out_time' => null,
    ];
    $insertValues = array_intersect_key($insertValues, array_flip($moduleColumns));
    $moduleNames = array_keys($insertValues);
    $moduleSql = "INSERT INTO `{$prefix}modules` (`" . implode('`,`', $moduleNames) . "`) VALUES (:" . implode(',:', $moduleNames) . ")";
    $moduleInsert = $pdo->prepare($moduleSql);
    $moduleInsert->execute(array_combine(array_map(static fn($key) => ':' . $key, $moduleNames), array_values($insertValues)));
    $moduleId = (int) $pdo->lastInsertId();
}
$pdo->prepare("INSERT IGNORE INTO `{$prefix}modules_menu` (`moduleid`, `menuid`) VALUES (:moduleid, 0)")->execute([':moduleid' => $moduleId]);

// ==========================================
// SECCIÓN 1: HERO
// ==========================================
$heroHtml = '<div id="inicio" class="seccion-hero" style="background-color: #F3E4D0; padding: 70px 0 80px 0; border-radius: 16px; margin-bottom: 45px; position: relative; overflow: hidden; border: 1px solid rgba(184, 101, 73, 0.2);">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-7 col-md-12 mb-4 mb-lg-0">
        <div style="display: inline-block; background: rgba(184, 101, 73, 0.15); color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; padding: 6px 16px; border-radius: 50px; margin-bottom: 20px; border: 1px solid rgba(184, 101, 73, 0.3);">
          TRADICIÓN CHOCOLATERA DESDE 1952
        </div>
        <h1 class="hero-titulo" style="font-family: \'DM Serif Display\', Georgia, serif; font-size: 3.4rem; font-weight: 700; color: #4A2E26; line-height: 1.15; margin-bottom: 22px;">
          Chocolate Artesanal de Ambato
        </h1>
        <p class="hero-subtitulo" style="font-family: \'DM Sans\', sans-serif; font-size: 1.25rem; color: #4A2E26; margin-bottom: 35px; line-height: 1.65; max-width: 600px;">
          Elaborado con noble cacao ecuatoriano fino de aroma y el calor de nuestra serranía. Puro, aromático y 100% natural.
        </p>
        <div class="hero-botones" style="display: flex; gap: 16px; flex-wrap: wrap;">
          <a href="#productos" class="btn-cafe" style="background-color: #4A2E26; color: #F3E4D0; padding: 14px 34px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block; font-size: 1.05rem;">
            Ver productos
          </a>
          <a href="#historia" class="btn-dorado-outline" style="border: 2px solid #B86549; color: #4A2E26; padding: 12px 32px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block; font-size: 1.05rem;">
            Nuestra historia
          </a>
        </div>
      </div>
      <div class="col-lg-5 col-md-12 text-center">
        <div class="hero-imagen-wrapper" style="position: relative;">
          <picture>
            <source srcset="images/hero_chocolate_taza.webp" type="image/webp">
            <img 
              src="images/hero_chocolate_taza.jpg" 
              alt="Taza humeante de chocolate artesanal ambateño con espuma de molinillo" 
              class="hero-imagen img-fluid" 
              style="width: 100%; border-radius: 16px; box-shadow: 0 18px 40px rgba(74, 46, 38, 0.22); border: 3px solid rgba(255, 255, 255, 0.7); object-fit: cover; max-height: 420px;"
            />
          </picture>
        </div>
      </div>
    </div>
  </div>
</div>';

// ==========================================
// SECCIÓN 2: PRODUCTOS RECIENTES Y ACCESO AL CATÁLOGO
// ==========================================
$productosHtml = '<section id="productos" class="ambato-products-intro">
  <div class="container">
    <div class="ambato-products-heading">
      <span>Selección exclusiva</span>
      <h2>Nuestras especialidades de cacao</h2>
      <p>Descubre las novedades y los sabores artesanales elaborados con cacao fino de aroma ecuatoriano y recetas familiares desde 1952.</p>
    </div>
  </div>
</section>';

// ==========================================
// SECCIÓN 3: HISTORIA
// ==========================================
$historiaHtml = '<div id="historia" class="seccion-historia" style="background-color: #FAF5EE; padding: 80px 0 90px 0; border-radius: 16px; margin-bottom: 45px; border: 1px solid rgba(184, 101, 73, 0.2);">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6 col-md-12 mb-4 mb-lg-0 text-center">
        <picture>
          <source srcset="images/historia_paila_artesanal.webp" type="image/webp">
          <img 
            src="images/historia_paila_artesanal.jpg" 
            alt="Producción artesanal de chocolate en paila de cobre tradicional en Ambato" 
            class="img-fluid historia-imagen" 
            style="width: 100%; border-radius: 16px; box-shadow: 0 16px 36px rgba(74, 46, 38, 0.18); border: 2px solid rgba(184, 101, 73, 0.3); object-fit: cover; max-height: 440px;"
          />
        </picture>
      </div>
      <div class="col-lg-6 col-md-12">
        <div class="historia-texto" style="padding-left: 20px;">
          <div style="color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 12px;">
            Herencia y Pasión
          </div>
          <h2 style="font-family: \'DM Serif Display\', Georgia, serif; font-size: 2.6rem; color: #4A2E26; margin-bottom: 22px; line-height: 1.2;">
            Desde 1952 en el corazón de Ambato
          </h2>
          <p style="font-size: 1.12rem; line-height: 1.8; color: #4A2E26; margin-bottom: 20px;">
            Lo que comenzó como una receta entrañable en los fogones familiares de Ambato se convirtió en la esencia que acompaña las mañanas de los hogares ecuatorianos. Durante más de siete décadas hemos preservado el tostado lento a leña y la molienda tradicional en piedra.
          </p>
          <p style="font-size: 1.05rem; line-height: 1.7; color: #4A2E26; margin-bottom: 30px;">
            Cada tableta encierra el respeto por nuestros agricultores locales y el orgullo de ofrecer un chocolate auténtico, libre de grasas añadidas y con el inconfundible aroma del cacao nacional de nuestra serranía.
          </p>
          <a href="#contacto" class="btn-cafe" style="background-color: #4A2E26; color: #F3E4D0; padding: 14px 34px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block;">
            Conoce más y Contáctanos
          </a>
        </div>
      </div>
    </div>
  </div>
</div>';

// ==========================================
// SECCIÓN 4: BENEFICIOS
// ==========================================
$beneficiosHtml = '<div id="beneficios" class="seccion-beneficios" style="background-color: #F3E4D0; padding: 75px 0 85px 0; border-radius: 16px; margin-bottom: 45px; border: 1px solid rgba(184, 101, 73, 0.2);">
  <div class="container">
    <div class="text-center mb-5">
      <div style="color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 10px;">
        Nuestros Valores
      </div>
      <h2 style="font-family: \'DM Serif Display\', Georgia, serif; font-size: 2.4rem; color: #4A2E26;">
        ¿Por qué elegir nuestro chocolate?
      </h2>
    </div>
    <div class="row">
      <!-- Beneficio 1: 100% Artesanal -->
      <div class="col-lg-4 col-md-4 mb-4">
        <div class="caja-beneficio">
          <div class="icono-beneficio-svg">
            <svg viewBox="0 0 24 24" width="44" height="44" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
            </svg>
          </div>
          <h4 style="font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;">100% Artesanal</h4>
          <p style="color: #4A2E26; font-size: 0.98rem; line-height: 1.6;">Procesos ancestrales en paila de cobre que conservan intactas las notas organolépticas del grano puro.</p>
        </div>
      </div>

      <!-- Beneficio 2: Beneficios Naturales -->
      <div class="col-lg-4 col-md-4 mb-4">
        <div class="caja-beneficio">
          <div class="icono-beneficio-svg">
            <svg viewBox="0 0 24 24" width="44" height="44" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
            </svg>
          </div>
          <h4 style="font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;">Beneficios Naturales</h4>
          <p style="color: #4A2E26; font-size: 0.98rem; line-height: 1.6;">Rico en antioxidantes, magnesio y teobromina que aportan energía saludable sin conservantes químicos.</p>
        </div>
      </div>

      <!-- Beneficio 3: Comercio Justo -->
      <div class="col-lg-4 col-md-4 mb-4">
        <div class="caja-beneficio">
          <div class="icono-beneficio-svg">
            <svg viewBox="0 0 24 24" width="44" height="44" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
              <circle cx="9" cy="7" r="4"></circle>
              <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
              <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
            </svg>
          </div>
          <h4 style="font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;">Comercio Justo</h4>
          <p style="color: #4A2E26; font-size: 0.98rem; line-height: 1.6;">Trato directo y pago digno a familias productoras de cacao fino de aroma en el campo ecuatoriano.</p>
        </div>
      </div>
    </div>
  </div>
</div>';

// ==========================================
// SECCIÓN 5: CONTACTO Y FOOTER
// ==========================================
$contactoHtml = '<div id="contacto" class="seccion-contacto" style="background-color: #4A2E26; color: #F3E4D0; padding: 70px 30px 40px 30px; border-radius: 16px; border: 1px solid rgba(184, 101, 73, 0.3);">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4">
        <div style="margin-bottom: 20px;">
          <img src="images/logo_chocolate_el_ambateno.png" alt="Chocolate El Ambateño" style="max-height: 78px; padding: 4px; border-radius: 6px;" />
        </div>
        <p style="color: #E2D0BE; line-height: 1.7; font-size: 0.98rem;">
          Tradición chocolatera artesanal desde 1952. Llevamos el auténtico aroma, pureza y calidez del cacao ecuatoriano a cada rincón del país.
        </p>
      </div>

      <div class="col-lg-4 col-md-6 mb-4">
        <h4 style="font-family: \'DM Serif Display\', Georgia, serif; color: #FFFFFF; font-size: 1.45rem; margin-bottom: 18px; border-bottom: 2px solid #B86549; display: inline-block; padding-bottom: 6px;">
          Contáctanos
        </h4>
        <p style="color: #E2D0BE; margin-bottom: 10px;">
          <strong>📍 Ubicación:</strong> Ambato, Provincia de Tungurahua, Ecuador
        </p>
        <p style="color: #E2D0BE; margin-bottom: 10px;">
          <strong>📞 Teléfono:</strong> <a href="tel:+593994851768" style="color: #B86549; text-decoration: none; font-weight: 600;">+593 99 485 1768</a>
        </p>
        <p style="color: #E2D0BE; margin-bottom: 10px;">
          <strong>💬 WhatsApp:</strong> <a href="https://wa.me/593994851768" target="_blank" style="color: #B86549; text-decoration: none; font-weight: 600;">+593 99 485 1768</a>
        </p>
        <p style="color: #E2D0BE;">
          <strong>🚚 Envíos:</strong> Cobertura a nivel nacional (Quito, Guayaquil, Cuenca y todo el Ecuador)
        </p>
      </div>

      <div class="col-lg-4 col-md-12 mb-4">
        <h4 style="font-family: \'DM Serif Display\', Georgia, serif; color: #FFFFFF; font-size: 1.45rem; margin-bottom: 18px; border-bottom: 2px solid #B86549; display: inline-block; padding-bottom: 6px;">
          Horario de Atención
        </h4>
        <p style="color: #E2D0BE; margin-bottom: 8px;">
          <strong>Lunes a Sábado:</strong> 08:30 - 18:00
        </p>
        <p style="color: #E2D0BE; margin-bottom: 22px;">
          <strong>Domingos:</strong> Pedidos y atención directa por WhatsApp
        </p>
        <a href="https://wa.me/593994851768?text=' . urlencode('Hola, deseo realizar una consulta o pedido de Chocolate Artesanal de Ambato.') . '" target="_blank" class="btn-dorado-agregar" style="max-width: 260px; font-size: 1rem;">
          Escríbenos a WhatsApp
        </a>
      </div>
    </div>

    <div class="footer-bottom" style="margin-top: 40px; padding-top: 24px; border-top: 1px solid rgba(245, 235, 221, 0.2); text-align: center; color: rgba(245, 235, 221, 0.75); font-size: 0.92rem;">
      <p style="margin: 0;">© 2026 Chocolate Artesanal de Ambato. Todos los derechos reservados. Elaborado con pasión y cacao fino de aroma.</p>
    </div>
  </div>
</div>';

// Construcción del árbol JSON de SP Page Builder
$pageStructure = [
    [
        'id' => '1700000000000',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000000',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000001',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000001',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000002',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000002',
                            'title' => '',
                            'text' => $heroHtml
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000010',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000010',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000011',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000011',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000012',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000012',
                            'title' => '',
                            'text' => $productosHtml
                        ]
                    ],
                    [
                        'id' => '1700000000013',
                        'name' => 'module',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000013',
                            'title' => '',
                            'heading_selector' => 'h3',
                            'module_type' => 'module',
                            'id' => $moduleId,
                            'class' => 'ambato-products-module'
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000020',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000020',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000021',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000021',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000022',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000022',
                            'title' => '',
                            'text' => $historiaHtml
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000030',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000030',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000031',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000031',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000032',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000032',
                            'title' => '',
                            'text' => $beneficiosHtml
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000040',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000040',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000041',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000041',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000042',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000042',
                            'title' => '',
                            'text' => $contactoHtml
                        ]
                    ]
                ]
            ]
        ]
    ]
];

$jsonFinal = json_encode($pageStructure, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

$uPage = $pdo->prepare("UPDATE `{$prefix}sppagebuilder` SET `text` = :text, `content` = :text, `modified` = :mod WHERE `id` = 1");
$uPage->execute([
    ':text' => $jsonFinal,
    ':mod' => date('Y-m-d H:i:s')
]);

echo "Página de SP Page Builder (id=1) actualizada con éxito.\n";
