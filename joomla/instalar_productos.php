<?php
/**
 * Instalador Automático de Productos - Chocolate Artesanal de Ambato
 * Para Joomla 5 / 6 y SP Page Builder
 */

define('_JEXEC', 1);

// Verificar configuración de Joomla
$configFile = __DIR__ . '/configuration.php';
if (!file_exists($configFile)) {
    die("Error: No se encontró el archivo configuration.php de Joomla.");
}

require_once $configFile;
$config = new JConfig();

$host = $config->host;
$port = 3306;
if (strpos($host, ':') !== false) {
    list($host, $port) = explode(':', $host);
}

try {
    $dsn = "mysql:host={$host};port={$port};dbname={$config->db};charset=utf8mb4";
    $pdo = new PDO($dsn, $config->user, $config->password, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    die("Error al conectar con la base de datos: " . $e->getMessage());
}

$prefix = $config->dbprefix;

// Obtener el ID del primer superusuario existente
$userStmt = $pdo->query("SELECT id FROM `{$prefix}users` ORDER BY id ASC LIMIT 1");
$adminUser = $userStmt->fetch();
$userId = $adminUser ? (int)$adminUser['id'] : 1;

// 1. Verificar o crear la categoría "Especialidades de Cacao"
$catStmt = $pdo->prepare("SELECT id FROM `{$prefix}categories` WHERE `extension` = 'com_content' AND `alias` = 'especialidades-cacao' LIMIT 1");
$catStmt->execute();
$category = $catStmt->fetch();

if ($category) {
    $catId = (int)$category['id'];
} else {
    // Buscar la categoría raíz de com_content o la categoría "Uncategorised"
    $rootStmt = $pdo->query("SELECT id, lft, rgt FROM `{$prefix}categories` WHERE `id` = 1 LIMIT 1");
    $rootCat = $rootStmt->fetch();
    
    // Buscar categoría por defecto si existe
    $uncatStmt = $pdo->query("SELECT id FROM `{$prefix}categories` WHERE `extension` = 'com_content' ORDER BY id ASC LIMIT 1");
    $defaultCat = $uncatStmt->fetch();
    
    if ($defaultCat) {
        $catId = (int)$defaultCat['id'];
    } else {
        $catId = 2; // Estándar de Joomla
    }
}

// 2. Definición del catálogo de productos
$imagenAvif = 'images/productos/imagen_producto_default.avif';
$imagenWebp = 'images/productos/imagen_producto_default.webp';

// Usamos la imagen AVIF solicitada (con fallback en caso de requerirse)
$rutaImagen = file_exists(__DIR__ . '/' . $imagenAvif) ? $imagenAvif : (file_exists(__DIR__ . '/' . $imagenWebp) ? $imagenWebp : 'desarrollo/imagen_producto_default.avif');

$productos = [
    [
        'title' => 'Tableta 70% Cacao Fino de Aroma',
        'alias' => 'tableta-70-cacao',
        'precio' => '$4.50',
        'peso' => '100g',
        'cacao' => '70%',
        'resumen' => 'Barra de chocolate oscuro artesanal elaborada con una noble selección de cacao nacional fino de aroma. Equilibrio perfecto entre notas frutales, tostado en leña y amargor elegante.',
        'descripcion' => '<p>Elaborada siguiendo la tradición ambateña desde 1952, nuestra <strong>Tableta 70% Cacao</strong> es el estandarte de nuestra casa chocolatera. Seleccionamos cuidadosamente granos de cacao fino de aroma provenientes de pequeños productores andinos y del litoral ecuatoriano.</p>
        <h4>Características:</h4>
        <ul>
            <li><strong>Porcentaje:</strong> 70% masa de cacao pura, 30% panela agroecológica.</li>
            <li><strong>Peso Neto:</strong> 100 gramos.</li>
            <li><strong>Notas de Cata:</strong> Frutos secos, ciruela pasa y madera noble.</li>
            <li><strong>Recomendación:</strong> Ideal para degustación directa, maridaje con café o derretir en leche caliente.</li>
        </ul>'
    ],
    [
        'title' => 'Chocolate con Naranja & Jengibre',
        'alias' => 'chocolate-naranja-jengibre',
        'precio' => '$5.00',
        'peso' => '100g',
        'cacao' => '60%',
        'resumen' => 'Fusión aromática vibrante que combina chocolate semiamargo al 60% con cáscara de naranja confitada al sol y el toque cálido y especiado del jengibre fresco.',
        'descripcion' => '<p>Una experiencia sensorial única que despierta el paladar. La acidez cítrica de la naranja andina se equilibra con el picor sutil del jengibre molido en piedra, envueltos en la untuosidad del cacao puro.</p>
        <h4>Características:</h4>
        <ul>
            <li><strong>Porcentaje:</strong> 60% licor de cacao artesanal.</li>
            <li><strong>Ingredientes:</strong> Cacao fino, panela orgánica, cáscara de naranja deshidratada y jengibre natural.</li>
            <li><strong>Peso Neto:</strong> 100 gramos.</li>
            <li><strong>Beneficios:</strong> Alto contenido de antioxidantes y efecto revitalizante natural.</li>
        </ul>'
    ],
    [
        'title' => 'Cacao en Grano Tostado en Paila',
        'alias' => 'cacao-en-grano-tostado',
        'precio' => '$6.00',
        'peso' => '250g',
        'cacao' => '100%',
        'resumen' => 'Granos enteros de cacao fino de aroma seleccionados a mano, fermentados a punto óptimo y tostados a fuego lento en paila de cobre tradicional en Ambato.',
        'descripcion' => '<p>La pureza del campo ecuatoriano sin intermediarios. Nuestros granos conservan su manteca natural y teobromina, ofreciendo una textura crujiente y aroma inigualable.</p>
        <h4>Características:</h4>
        <ul>
            <li><strong>Ingrediente:</strong> 100% grano de cacao nacional ecuatoriano.</li>
            <li><strong>Presentación:</strong> Bolsa kraft biodegradable de 250 gramos con cierre hermético.</li>
            <li><strong>Usos versátiles:</strong> Snack energético superfood, infusión de cáscara o molienda casera para pasta de taza.</li>
        </ul>'
    ],
    [
        'title' => 'Pasta Tradicional de Chocolate de Taza (100% Cacao)',
        'alias' => 'pasta-tradicional-chocolate-taza',
        'precio' => '$4.00',
        'peso' => '200g',
        'cacao' => '100%',
        'resumen' => 'La auténtica pasta ambateña para preparar el tradicional chocolate caliente con espuma de molinillo. Sin azúcar añadida, solo cacao puro concentrado.',
        'descripcion' => '<p>El aroma de los desayunos familiares de nuestra serranía. Pasta compacta pura lista para disolver en agua o leche hirviendo con canela, clavo de olor y azúcar al gusto.</p>
        <h4>Modo de Preparación Tradicional:</h4>
        <p>Hervir 1 litro de leche entera con una astilla de canela. Agregar 1 porción de pasta de chocolate, batir con molinillo de madera hasta obtener abundante espuma dorada y servir muy caliente.</p>'
    ],
    [
        'title' => 'Chocolate con Almendras Tostadas y Sal Marina',
        'alias' => 'chocolate-almendras-sal-marina',
        'precio' => '$5.50',
        'peso' => '100g',
        'cacao' => '65%',
        'resumen' => 'Chocolate oscuro al 65% coronado con trocitos de almendras enteras tostadas y una pizca de cristales de sal marina que intensifican las notas a cacao.',
        'descripcion' => '<p>El balance perfecto entre lo dulce, lo amargo y un toque salino sutil que resalta la intensidad aromática del chocolate artesanal ambateño.</p>
        <h4>Características:</h4>
        <ul>
            <li><strong>Porcentaje:</strong> 65% cacao fino de aroma.</li>
            <li><strong>Toppings:</strong> Almendras seleccionadas crujientes y sal marina mineral sin refinar.</li>
            <li><strong>Peso Neto:</strong> 100 gramos.</li>
        </ul>'
    ],
    [
        'title' => 'Cacao Puro en Polvo Desgrasado',
        'alias' => 'cacao-puro-en-polvo',
        'precio' => '$4.80',
        'peso' => '250g',
        'cacao' => '100%',
        'resumen' => 'Cacao en polvo soluble obtenido por prensado mecánico en frío, sin alcalinizar, sin azúcares y sin conservantes químicos.',
        'descripcion' => '<p>Ideal para deportistas, repostería saludable, batidos matutinos y postres gourmet. Aporta toda la energía natural del cacao andino.</p>
        <h4>Características:</h4>
        <ul>
            <li><strong>Ingrediente:</strong> 100% Cacao natural desgrasado.</li>
            <li><strong>Presentación:</strong> Doypack resellable de 250 gramos.</li>
            <li><strong>Aporte:</strong> Rico en magnesio, hierro y antioxidantes flavonoides.</li>
        </ul>'
    ],
    [
        'title' => 'Bombones Rellenos de Frutas Andinas (Caja x6)',
        'alias' => 'bombones-frutas-andinas',
        'precio' => '$7.50',
        'peso' => '120g',
        'cacao' => '70%',
        'resumen' => 'Exclusiva caja de 6 bombones artesanales con concha de chocolate 70% y corazones fluidos de reducción natural de maracuyá, uvilla y mora de páramo.',
        'descripcion' => '<p>Una obra de arte de la bombonería ambateña. Frutas frescas cosechadas en los valles de Tungurahua convertidas en un centro untuoso que estalla en boca.</p>
        <h4>Sabores incluidos:</h4>
        <ul>
            <li>2x Bombón Maracuyá Silvestre</li>
            <li>2x Bombón Uvilla Andina (Golden Berry)</li>
            <li>2x Bombón Mora de Castilla</li>
        </ul>'
    ],
    [
        'title' => 'Nibs de Cacao Caramelizados con Panela',
        'alias' => 'nibs-cacao-caramelizados',
        'precio' => '$4.00',
        'peso' => '150g',
        'cacao' => '100%',
        'resumen' => 'Trozos crujientes de grano de cacao tostado ligeramente glaseados con miel de panela orgánica. El topping perfecto para bowls, yogur y ensaladas.',
        'descripcion' => '<p>Snack crujiente 100% saludable y libre de gluten. Mantiene la textura natural del grano con un toque dulce caramelo que fascina a grandes y chicos.</p>
        <h4>Presentación:</h4>
        <p>Bolsa transparente hermética de 150 gramos.</p>'
    ]
];

// 3. Inspeccionar columnas de la tabla de contenido para máxima compatibilidad
$colStmt = $pdo->query("SHOW COLUMNS FROM `{$prefix}content`");
$columns = $colStmt->fetchAll(PDO::FETCH_COLUMN);

$createdCount = 0;
$updatedCount = 0;
$resultados = [];

$now = date('Y-m-d H:i:s');

foreach ($productos as $idx => $prod) {
    // Generar JSON de imágenes de Joomla
    $imagesJson = json_encode([
        'image_intro' => $rutaImagen,
        'image_intro_alt' => $prod['title'] . ' - Chocolate Artesanal de Ambato',
        'image_intro_caption' => '',
        'float_intro' => '',
        'image_fulltext' => $rutaImagen,
        'image_fulltext_alt' => $prod['title'] . ' - Chocolate Artesanal de Ambato',
        'image_fulltext_caption' => '',
        'float_fulltext' => ''
    ], JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

    // Contenido del artículo estructurado con botón WhatsApp
    $urlWa = 'https://wa.me/593994851768?text=' . urlencode('Hola, deseo pedir ' . $prod['title'] . ' (' . $prod['precio'] . ')');
    
    $introHtml = '<div class="producto-tarjeta-joomla">
        <div class="precio-badge" style="font-size:1.4rem; font-weight:bold; color:#B86549; margin-bottom:10px;">' . $prod['precio'] . ' <small style="font-size:0.9rem; color:#666;">(' . $prod['peso'] . ')</small></div>
        <p class="lead" style="color:#4A2E26;">' . $prod['resumen'] . '</p>
        <div style="margin: 15px 0;">
            <a href="' . $urlWa . '" target="_blank" class="btn" style="background:#B86549; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;">Pedir por WhatsApp</a>
        </div>
    </div>';

    $fullHtml = $introHtml . '<hr style="border:0; border-top:1px solid #E0D3C1; margin:25px 0;">' . $prod['descripcion'];

    // Comprobar si ya existe el artículo
    $checkStmt = $pdo->prepare("SELECT id FROM `{$prefix}content` WHERE `alias` = ? LIMIT 1");
    $checkStmt->execute([$prod['alias']]);
    $existente = $checkStmt->fetch();

    if ($existente) {
        // Actualizar
        $artId = (int)$existente['id'];
        $updateSql = "UPDATE `{$prefix}content` SET 
            `title` = :title, 
            `introtext` = :introtext, 
            `fulltext` = :fulltext, 
            `images` = :images,
            `modified` = :modified
            WHERE `id` = :id";
        $uStmt = $pdo->prepare($updateSql);
        $uStmt->execute([
            ':title' => $prod['title'],
            ':introtext' => $introHtml,
            ':fulltext' => $fullHtml,
            ':images' => $imagesJson,
            ':modified' => $now,
            ':id' => $artId
        ]);
        $updatedCount++;
        $resultados[] = ['id' => $artId, 'title' => $prod['title'], 'precio' => $prod['precio'], 'status' => 'Actualizado'];
    } else {
        // Consultar columnas y sus detalles para no omitir campos sin valor por defecto
        $colDetailsStmt = $pdo->query("SHOW COLUMNS FROM `{$prefix}content`");
        $allCols = $colDetailsStmt->fetchAll();
        
        $campos = [
            'asset_id' => 0,
            'title' => $prod['title'],
            'alias' => $prod['alias'],
            'introtext' => $introHtml,
            'fulltext' => $fullHtml,
            'state' => 1,
            'catid' => $catId,
            'created' => $now,
            'created_by' => $userId,
            'created_by_alias' => '',
            'modified' => $now,
            'modified_by' => 0,
            'checked_out' => null,
            'checked_out_time' => null,
            'publish_up' => $now,
            'publish_down' => null,
            'images' => $imagesJson,
            'urls' => '{}',
            'attribs' => '{}',
            'version' => 1,
            'ordering' => $idx + 1,
            'metakey' => 'chocolate, artesanal, ambato, cacao, ' . strtolower($prod['title']),
            'metadesc' => $prod['resumen'],
            'access' => 1,
            'hits' => 0,
            'metadata' => '{"robots":"","author":"","rights":""}',
            'featured' => ($idx < 3) ? 1 : 0,
            'language' => '*',
            'note' => ''
        ];

        // Llenar cualquier campo NOT NULL sin default que falte
        foreach ($allCols as $colInfo) {
            $colName = $colInfo['Field'];
            if ($colName === 'id') continue;
            if (!isset($campos[$colName]) && $colInfo['Null'] === 'NO' && $colInfo['Default'] === null) {
                $campos[$colName] = '';
            }
        }

        // Filtrar solo las columnas que existan en la tabla
        $columnasInsert = [];
        $placeholders = [];
        $valores = [];
        foreach ($campos as $col => $val) {
            if (in_array($col, $columns)) {
                $columnasInsert[] = "`{$col}`";
                $placeholders[] = ":{$col}";
                $valores[":{$col}"] = $val;
            }
        }

        $insertSql = "INSERT INTO `{$prefix}content` (" . implode(', ', $columnasInsert) . ") VALUES (" . implode(', ', $placeholders) . ")";
        $iStmt = $pdo->prepare($insertSql);
        $iStmt->execute($valores);
        $artId = (int)$pdo->lastInsertId();

        // Vincular al flujo de trabajo (workflow) para que Joomla lo muestre en la lista de artículos
        $pdo->query("INSERT INTO `{$prefix}workflow_associations` (`item_id`, `stage_id`, `extension`) 
                     VALUES ($artId, 1, 'com_content.article') 
                     ON DUPLICATE KEY UPDATE `stage_id` = 1");
        
        $pdo->query("UPDATE `{$prefix}content` SET `asset_id` = 27 WHERE id = $artId AND asset_id = 0");

        $createdCount++;
        $resultados[] = ['id' => $artId, 'title' => $prod['title'], 'precio' => $prod['precio'], 'status' => 'Creado'];
    }
}

// 4. Registrar la imagen en SP Media si la tabla existe
try {
    $spMediaStmt = $pdo->query("SHOW TABLES LIKE '{$prefix}spmedia'");
    if ($spMediaStmt->fetch()) {
        $spCheck = $pdo->prepare("SELECT id FROM `{$prefix}spmedia` WHERE `path` = ? LIMIT 1");
        $spCheck->execute([$rutaImagen]);
        if (!$spCheck->fetch()) {
            $insertSpMedia = $pdo->prepare("INSERT INTO `{$prefix}spmedia` 
                (`title`, `path`, `thumb`, `alt`, `caption`, `description`, `type`, `extension`, `size`, `created_on`, `created_by`, `modified_on`, `modified_by`)
                VALUES (:title, :path, :thumb, :alt, '', '', 'image', 'avif', 58740, :created, :user, :created, :user)");
            $insertSpMedia->execute([
                ':title' => 'Chocolate Artesanal de Ambato - Producto Default',
                ':path' => $rutaImagen,
                ':thumb' => $rutaImagen,
                ':alt' => 'Producto Chocolate Artesanal Ambateño',
                ':created' => $now,
                ':user' => $userId
            ]);
        }
    }
} catch (Exception $e) {
    // Continuar si la tabla no existe o tiene estructura diferente
}

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Catálogo de Productos Instalado - Chocolate Artesanal de Ambato</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #F3E4D0;
            color: #4A2E26;
            margin: 0;
            padding: 40px 20px;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            background: #FFFFFF;
            padding: 35px;
            border-radius: 14px;
            box-shadow: 0 10px 30px rgba(74, 46, 38, 0.1);
            border: 1px solid #E5D5C0;
        }
        h1 {
            color: #4A2E26;
            border-bottom: 2px solid #B86549;
            padding-bottom: 12px;
            margin-top: 0;
        }
        .resumen-alert {
            background: #EAF7EC;
            border-left: 5px solid #28A745;
            padding: 15px 20px;
            border-radius: 6px;
            margin-bottom: 25px;
            color: #1E662E;
            font-size: 1.1rem;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 14px 18px;
            text-align: left;
            border-bottom: 1px solid #EFE5D8;
        }
        th {
            background-color: #4A2E26;
            color: #F3E4D0;
            font-weight: 600;
        }
        tr:hover {
            background-color: #FAF4EC;
        }
        .badge-status {
            background: #B86549;
            color: #FFFFFF;
            padding: 4px 10px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: bold;
        }
        .precio-tag {
            color: #B86549;
            font-weight: bold;
            font-size: 1.1rem;
        }
        .img-preview {
            width: 50px;
            height: 50px;
            object-fit: contain;
            border-radius: 6px;
            background: #F8F8F8;
            border: 1px solid #DDD;
            vertical-align: middle;
            margin-right: 10px;
        }
        .btn-panel {
            display: inline-block;
            background: #4A2E26;
            color: #F3E4D0;
            padding: 12px 25px;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            margin-top: 20px;
            transition: all 0.3s;
        }
        .btn-panel:hover {
            background: #23140A;
            box-shadow: 0 4px 12px rgba(74, 46, 38, 0.3);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>🍫 Catálogo de Productos Creado con Éxito</h1>
    
    <div class="resumen-alert">
        <strong>¡Listo!</strong> Se han procesado <strong><?= count($resultados) ?> productos</strong> en el componente de Contenido de Joomla.<br>
        Todos configurados con la imagen: <code><?= htmlspecialchars($rutaImagen) ?></code>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Estado</th>
                <th>Acción</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($resultados as $item): ?>
            <tr>
                <td><strong>#<?= $item['id'] ?></strong></td>
                <td>
                    <img src="<?= htmlspecialchars($rutaImagen) ?>" class="img-preview" alt="Preview">
                    <strong><?= htmlspecialchars($item['title']) ?></strong>
                </td>
                <td><span class="precio-tag"><?= htmlspecialchars($item['precio']) ?></span></td>
                <td><span class="badge-status"><?= htmlspecialchars($item['status']) ?></span></td>
                <td>
                    <a href="administrator/index.php?option=com_content&task=article.edit&id=<?= $item['id'] ?>" target="_blank" style="color:#4A2E26; font-weight:bold; text-decoration:underline;">Editar en Joomla</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <div style="text-align: center; margin-top: 30px;">
        <a href="administrator/index.php?option=com_content&view=articles" class="btn-panel">Ir al Gestor de Artículos de Joomla</a>
        <a href="index.php" class="btn-panel" style="background:#B86549; color:#FFF; margin-left:15px;">Ver Sitio Web</a>
    </div>
</div>
</body>
</html>

