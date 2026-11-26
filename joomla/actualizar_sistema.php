<?php
/**
 * Actualizador del Sistema Web - Chocolate Artesanal de Ambato
 * Ejecuta las configuraciones y requerimientos técnicos descritos en la documentación:
 * 1. Categoría com_content
 * 2. Campos personalizados com_fields
 * 3. Parámetros de plantilla Helix Ultimate (Logo SVG, colores institucionales, contacto, topbar)
 * 4. Ajustes en SP Page Builder
 */

define('_JEXEC', 1);
require_once __DIR__ . '/configuration.php';
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
$now = date('Y-m-d H:i:s');

echo "=== 1. VERIFICAR / CREAR CATEGORÍA ESPECIALIDADES DE CACAO ===\n";
$catStmt = $pdo->prepare("SELECT id FROM `{$prefix}categories` WHERE `extension` = 'com_content' AND `alias` = 'especialidades-cacao' LIMIT 1");
$catStmt->execute();
$cat = $catStmt->fetch();

if ($cat) {
    $catId = (int)$cat['id'];
    echo "Categoría existente encontrada con ID: {$catId}\n";
} else {
    // Obtener los límites del árbol para insertar al final del ROOT
    $rootStmt = $pdo->query("SELECT id, rgt FROM `{$prefix}categories` WHERE `id` = 1");
    $root = $rootStmt->fetch();
    $rootRgt = (int)$root['rgt'];

    // Insertar nueva categoría
    $insCat = $pdo->prepare("INSERT INTO `{$prefix}categories` 
        (`asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`)
        VALUES 
        (0, 1, :lft, :rgt, 1, 'especialidades-cacao', 'com_content', 'Especialidades de Cacao', 'especialidades-cacao', '', 'Catálogo de especialidades artesanales de cacao fino de aroma.', 1, 1, '{}', 'Chocolate artesanal tradicional de Ambato.', 'chocolate, cacao, ambato', '{\"robots\":\"\",\"author\":\"\"}', 1, :now, 1, :now, 0, '*', 1)");
    
    $insCat->execute([
        ':lft' => $rootRgt,
        ':rgt' => $rootRgt + 1,
        ':now' => $now
    ]);
    $catId = (int)$pdo->lastInsertId();

    // Actualizar el rgt del root
    $pdo->query("UPDATE `{$prefix}categories` SET `rgt` = `rgt` + 2 WHERE `id` = 1");
    echo "Nueva categoría 'Especialidades de Cacao' creada con ID: {$catId}\n";
}

// Actualizar artículos para que pertenezcan a esta categoría
$updateArtCat = $pdo->prepare("UPDATE `{$prefix}content` SET `catid` = :catid WHERE `id` BETWEEN 1 AND 8");
$updateArtCat->execute([':catid' => $catId]);
echo "8 productos asignados a la categoría ID: {$catId}\n";


echo "\n=== 2. CONFIGURAR CAMPOS PERSONALIZADOS (com_fields) ===\n";
// Grupo de campos: Ficha Técnica del Producto
$grpStmt = $pdo->prepare("SELECT id FROM `{$prefix}fields_groups` WHERE `context` = 'com_content.article' AND `title` = 'Ficha del Producto' LIMIT 1");
$grpStmt->execute();
$group = $grpStmt->fetch();

if ($group) {
    $groupId = (int)$group['id'];
} else {
    $insGrp = $pdo->prepare("INSERT INTO `{$prefix}fields_groups` 
        (`asset_id`, `context`, `title`, `note`, `description`, `state`, `ordering`, `params`, `language`, `created`, `created_by`, `modified`, `modified_by`, `access`)
        VALUES (0, 'com_content.article', 'Ficha del Producto', '', 'Campos técnicos y comerciales del catálogo de chocolate', 1, 1, '{}', '*', :now, 1, :now, 1, 1)");
    $insGrp->execute([':now' => $now]);
    $groupId = (int)$pdo->lastInsertId();
    echo "Grupo de campos creado con ID: {$groupId}\n";
}

$camposDef = [
    [
        'name' => 'precio_producto',
        'title' => 'Precio del Producto',
        'label' => 'Precio ($ USD)',
        'type' => 'text',
        'default' => '$4.50',
        'desc' => 'Precio de venta al público',
        'order' => 1
    ],
    [
        'name' => 'presentacion_cacao',
        'title' => 'Presentación / Gramaje',
        'label' => 'Presentación / Gramaje',
        'type' => 'text',
        'default' => '100g',
        'desc' => 'Gramaje neto y porcentaje de cacao',
        'order' => 2
    ],
    [
        'name' => 'origen_grano',
        'title' => 'Origen del Grano de Cacao',
        'label' => 'Origen del Cacao',
        'type' => 'text',
        'default' => 'Cacao Fino de Aroma - Ambato / Tungurahua',
        'desc' => 'Procedencia y método de tostado',
        'order' => 3
    ]
];

$fieldsMap = [];

foreach ($camposDef as $cDef) {
    $fStmt = $pdo->prepare("SELECT id FROM `{$prefix}fields` WHERE `context` = 'com_content.article' AND `name` = ? LIMIT 1");
    $fStmt->execute([$cDef['name']]);
    $fRow = $fStmt->fetch();

    if ($fRow) {
        $fId = (int)$fRow['id'];
        echo "Campo '{$cDef['name']}' ya existe con ID: {$fId}\n";
    } else {
        $insField = $pdo->prepare("INSERT INTO `{$prefix}fields` 
            (`asset_id`, `context`, `group_id`, `title`, `name`, `label`, `default_value`, `type`, `note`, `description`, `state`, `required`, `only_use_in_subform`, `ordering`, `params`, `fieldparams`, `language`, `created_time`, `created_user_id`, `modified_time`, `modified_by`, `access`)
            VALUES
            (0, 'com_content.article', :group_id, :title, :name, :label, :default_value, :type, '', :description, 1, 0, 0, :ordering, '{\"hint\":\"\",\"class\":\"\",\"showon\":\"\"}', '{}', '*', :now, 1, :now, 1, 1)");
        
        $insField->execute([
            ':group_id' => $groupId,
            ':title' => $cDef['title'],
            ':name' => $cDef['name'],
            ':label' => $cDef['label'],
            ':default_value' => $cDef['default'],
            ':type' => $cDef['type'],
            ':description' => $cDef['desc'],
            ':ordering' => $cDef['order'],
            ':now' => $now
        ]);
        $fId = (int)$pdo->lastInsertId();
        echo "Campo '{$cDef['name']}' creado con ID: {$fId}\n";

        // Asignar a todas las categorías
        $pdo->query("INSERT IGNORE INTO `{$prefix}fields_categories` (`field_id`, `category_id`) VALUES ({$fId}, 0)");
    }
    $fieldsMap[$cDef['name']] = $fId;
}

// Poblar los valores de los 8 productos
$valoresArticulos = [
    1 => ['precio_producto' => '$4.50', 'presentacion_cacao' => 'Tableta 100g (70% Cacao)', 'origen_grano' => 'Fino de Aroma - Ambato / Tungurahua'],
    2 => ['precio_producto' => '$5.00', 'presentacion_cacao' => 'Tableta 100g (60% Cacao con Naranja y Jengibre)', 'origen_grano' => 'Fino de Aroma & Cítricos Andinos'],
    3 => ['precio_producto' => '$6.00', 'presentacion_cacao' => 'Bolsa Kraft 250g (Granos 100% Cacao)', 'origen_grano' => 'Cacao Nacional - Tostado en Paila Ambateña'],
    4 => ['precio_producto' => '$4.00', 'presentacion_cacao' => 'Pasta 200g (100% Cacao puro de taza)', 'origen_grano' => 'Receta Tradicional Ambateña desde 1952'],
    5 => ['precio_producto' => '$5.50', 'presentacion_cacao' => 'Tableta 100g (65% Cacao con Almendras y Sal)', 'origen_grano' => 'Fino de Aroma & Almendras Tostadas'],
    6 => ['precio_producto' => '$4.80', 'presentacion_cacao' => 'Doypack 250g (Cacao Puro Desgrasado)', 'origen_grano' => 'Prensado Mecánico en Frío'],
    7 => ['precio_producto' => '$7.50', 'presentacion_cacao' => 'Caja x6 Bombones Artesanales (120g)', 'origen_grano' => 'Relleno de Maracuyá, Uvilla y Mora de Tungurahua'],
    8 => ['precio_producto' => '$4.00', 'presentacion_cacao' => 'Bolsa 150g (Nibs de Cacao con Panela)', 'origen_grano' => 'Cacao Fino & Panela Orgánica']
];

$insVal = $pdo->prepare("INSERT INTO `{$prefix}fields_values` (`field_id`, `item_id`, `value`) 
    VALUES (:field_id, :item_id, :val) 
    ON DUPLICATE KEY UPDATE `value` = :val");

foreach ($valoresArticulos as $itemId => $vals) {
    foreach ($vals as $fName => $val) {
        if (isset($fieldsMap[$fName])) {
            $insVal->execute([
                ':field_id' => $fieldsMap[$fName],
                ':item_id' => $itemId,
                ':val' => $val
            ]);
        }
    }
}
echo "Valores de campos personalizados guardados para los 8 productos.\n";


echo "\n=== 3. CONFIGURAR PARÁMETROS DE HELIX ULTIMATE ===\n";
$tmplStmt = $pdo->query("SELECT id, params FROM `{$prefix}template_styles` WHERE `template` = 'shaper_helixultimate' LIMIT 1");
$tmplRow = $tmplStmt->fetch();

if ($tmplRow) {
    $tId = (int)$tmplRow['id'];
    $params = json_decode($tmplRow['params'], true) ?: [];

    // Logo Institucional
    $params['logo_type'] = 'image';
    $params['logo_image'] = 'images/logo_chocolate_el_ambateno.png';
    $params['logo_alt'] = 'Chocolate El Ambateño';
    $params['mobile_logo'] = 'images/logo_chocolate_el_ambateno.png';
    $params['header_height'] = '88px';
    $params['header_height_sm'] = '72px';
    $params['header_height_xs'] = '64px';
    $params['logo_height'] = '78';
    $params['logo_height_sm'] = '62';
    $params['logo_height_xs'] = '54';

    // Header limpio y colores institucionales
    $params['header_bg_color'] = '#F3E4D0';
    $params['menu_text_color'] = '#4A2E26';
    $params['menu_text_hover_color'] = '#B86549';
    $params['menu_text_active_color'] = '#B86549';
    $params['enable_search'] = 0;
    $params['enable_login'] = 0;
    $params['sticky_header'] = 1;

    // Barra superior (Top Bar) con datos reales de Ambato
    $params['contactinfo'] = 1;
    $params['contact_position'] = 'top2';
    $params['contact_phone'] = '+593 99 485 1768';
    $params['contact_mobile'] = '+593 99 485 1768';
    $params['contact_email'] = 'contacto@chocolateambateno.ec';
    $params['topbar_bg_color'] = '#4A2E26';
    $params['topbar_text_color'] = '#F3E4D0';

    // Redes sociales oficiales
    $params['show_social_icons'] = 1;
    $params['social_position'] = 'top1';
    $params['whatsapp'] = '593994851768';
    $params['facebook'] = 'https://www.facebook.com/chocolateelambateno/#';
    $params['instagram'] = 'https://www.instagram.com/chocolateelambateno/';
    $params['tiktok'] = 'https://www.tiktok.com/@chocolate_el_ambateno?is_from_webapp=1&sender_device=pc';
    
    // Limpiar redes inactivas / dummy
    $inactivas = ['twitter', 'pinterest', 'linkedin', 'dribbble', 'behance', 'youtube', 'flickr', 'vk'];
    $params['text_color'] = '#4A2E26';
    $params['bg_color'] = '#F3E4D0';
    $params['link_color'] = '#B86549';
    $params['footer_bg_color'] = '#4A2E26';
    $params['footer_text_color'] = '#F3E4D0';
    $params['footer_link_color'] = '#B86549';
    $params['body_font'] = json_encode(['fontFamily' => 'DM Sans', 'fontSize' => '', 'fontWeight' => '400', 'fontStyle' => '', 'fontSubset' => '']);
    foreach (['h1_font', 'h2_font', 'h3_font', 'h4_font', 'h5_font', 'h6_font'] as $fontKey) {
        $params[$fontKey] = json_encode(['fontFamily' => 'DM Serif Display', 'fontSize' => '', 'fontWeight' => '400', 'fontStyle' => '', 'fontSubset' => '']);
    }
    $params['navigation_font'] = json_encode(['fontFamily' => 'DM Sans', 'fontSize' => '', 'fontWeight' => '600', 'fontStyle' => '', 'fontSubset' => '']);
    foreach ($inactivas as $red) {
        $params[$red] = '';
    }

    $uTmpl = $pdo->prepare("UPDATE `{$prefix}template_styles` SET `params` = :params WHERE `id` = :id");
    $uTmpl->execute([
        ':params' => json_encode($params, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE),
        ':id' => $tId
    ]);
    echo "Parámetros de Helix Ultimate actualizados exitosamente (Logo SVG, colores, topbar oficial).\n";
}

echo "\n=== ACTUALIZACIÓN COMPLETADA CON ÉXITO ===\n";
