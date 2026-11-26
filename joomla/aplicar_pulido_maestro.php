<?php
define('_JEXEC', 1);

require_once __DIR__ . '/configuration.php';
$config = new JConfig();

$host = $config->host;
$port = 3306;
if (strpos($host, ':') !== false) {
    list($host, $port) = explode(':', $host);
}

$dsn = "mysql:host={$host};port={$port};dbname={$config->db};charset=utf8mb4";
$pdo = new PDO($dsn, $config->user, $config->password, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]);

$prefix = $config->dbprefix;

echo "<pre>=== APLICANDO PULIDO Y MEJORAS DE ALTA CALIDAD ===\n\n";

// 1. El PNG recortado y transparente está servido desde /images.
$logoPath = 'images/logo_chocolate_el_ambateno.png';
if (file_exists(__DIR__ . '/' . $logoPath)) {
    echo "✔ Logotipo oficial de 'Chocolate El Ambateño' listo en Helix Ultimate\n";
}

// 2. ACTUALIZAR PARÁMETROS DE HELIX ULTIMATE (Top Bar, Contacto, Logo)
$stmt = $pdo->query("SELECT params FROM `{$prefix}template_styles` WHERE id = 13");
$row = $stmt->fetch();
$helixParams = json_decode($row['params'], true);

$helixParams['logo_type'] = 'image';
$helixParams['logo_image'] = 'images/logo_chocolate_el_ambateno.png';
$helixParams['mobile_logo'] = 'images/logo_chocolate_el_ambateno.png';
$helixParams['logo_alt'] = 'Chocolate El Ambateño';
$helixParams['logo_height'] = '78';
$helixParams['logo_height_sm'] = '62';
$helixParams['logo_height_xs'] = '54';
$helixParams['header_height'] = '88px';
$helixParams['header_height_sm'] = '72px';
$helixParams['header_height_xs'] = '64px';

$helixParams['contactinfo'] = '1';
$helixParams['contact_phone'] = '+593 99 485 1768';
$helixParams['contact_mobile'] = '+593 99 485 1768';
$helixParams['contact_email'] = 'pedidos@chocolateambateno.com';
$helixParams['header_bg_color'] = '#F3E4D0';
$helixParams['menu_text_color'] = '#4A2E26';
$helixParams['menu_text_hover_color'] = '#B86549';
$helixParams['menu_text_active_color'] = '#B86549';
$helixParams['topbar_bg_color'] = '#4A2E26';
$helixParams['topbar_text_color'] = '#F3E4D0';
$helixParams['contact_time'] = 'Lun - Sáb: 08:30 - 18:00';

$helixParams['show_social_icons'] = '1';
$helixParams['whatsapp'] = '593994851768';
$helixParams['facebook'] = 'https://www.facebook.com/chocolateelambateno/#';
$helixParams['instagram'] = 'https://www.instagram.com/chocolateelambateno/';
$helixParams['tiktok'] = 'https://www.tiktok.com/@chocolate_el_ambateno?is_from_webapp=1&sender_device=pc';

$newParamsJson = json_encode($helixParams, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
$uStmt = $pdo->prepare("UPDATE `{$prefix}template_styles` SET `params` = :p WHERE id = 13");
$uStmt->execute([':p' => $newParamsJson]);
echo "✔ Top Bar de Helix actualizado con datos reales de Ecuador y enlace de WhatsApp\n";

// 3. LIMPIAR TÍTULOS DE FILAS EN SP PAGE BUILDER
$pStmt = $pdo->query("SELECT `text` FROM `{$prefix}sppagebuilder` WHERE id = 1");
$pageRow = $pStmt->fetch();
if ($pageRow && !empty($pageRow['text'])) {
    $rows = json_decode($pageRow['text'], true);
    if (is_array($rows)) {
        foreach ($rows as &$r) {
            if (isset($r['settings']['title'])) {
                $r['settings']['title'] = ''; // Quitar títulos de fila para evitar que SPPB los imprima
            }
        }
        $cleanedJson = json_encode($rows, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
        $upPB = $pdo->prepare("UPDATE `{$prefix}sppagebuilder` SET `text` = :j, `content` = :j WHERE id = 1");
        $upPB->execute([':j' => $cleanedJson]);
        echo "✔ Títulos automáticos de fila de SP Page Builder eliminados\n";
    }
}

// 4. DESACTIVAR TÍTULO DE PÁGINA EN EL ÍTEM DE MENÚ INICIO (101)
$mStmt = $pdo->query("SELECT `params` FROM `{$prefix}menu` WHERE id = 101");
$mRow = $mStmt->fetch();
if ($mRow) {
    $menuParams = json_decode($mRow['params'] ?? '{}', true);
    $menuParams['show_page_heading'] = '0';
    $menuParams['show_title'] = '0';
    $uMenu = $pdo->prepare("UPDATE `{$prefix}menu` SET `params` = :p WHERE id = 101");
    $uMenu->execute([':p' => json_encode($menuParams)]);
    echo "✔ Encabezado de página 'Inicio' desactivado en el menú principal\n";
}

// 5. REGLAS CSS DEFINITIVAS DE PULIDO EN custom.css
$customCssPath = __DIR__ . '/templates/shaper_helixultimate/css/custom.css';
$extraCss = <<<'CSS'

/* ==========================================================================
   REGLAS DE PULIDO Y ACABADO PROFESIONAL
   ========================================================================== */

/* Ocultar cualquier título de encabezado residual */
.page-header, 
.sppb-section-title, 
.sppb-title-sub-title, 
.sp-page-builder .page-header,
.sp-module-title,
.sp-module-heading,
#sp-title,
.breadcrumb {
  display: none !important;
  visibility: hidden !important;
  height: 0 !important;
  margin: 0 !important;
  padding: 0 !important;
}

/* Espaciado del Top Bar de Helix */
#sp-top-bar {
  background-color: #4A2E26 !important;
  color: #F3E4D0 !important;
  font-size: 13px !important;
  border-bottom: 1px solid rgba(184, 101, 73, 0.25) !important;
}

#sp-top-bar a {
  color: #F3E4D0 !important;
  transition: color 0.3s ease;
}

#sp-top-bar a:hover {
  color: #B86549 !important;
}

#sp-top-bar .sp-contact-info li i {
  color: #B86549 !important;
  margin-right: 6px;
}

/* Ajuste del Logo */
.logo-image {
  height: 50px !important;
  max-height: 50px !important;
  width: auto !important;
}

/* Efectos de pulido para las tarjetas */
.tarjeta-producto-box {
  transition: transform 0.4s cubic-bezier(0.165, 0.84, 0.44, 1), box-shadow 0.4s ease !important;
}

.tarjeta-producto-box:hover {
  transform: translateY(-10px) !important;
  box-shadow: 0 20px 40px rgba(74, 46, 38, 0.16) !important;
}
CSS;

file_put_contents($customCssPath, $extraCss, FILE_APPEND);
echo "✔ Reglas CSS de acabado profesional añadidas a custom.css\n";

echo "\n🎉 ¡PULIDO Y MEJORAS COMPLETADAS EXITOSAMENTE! 🎉</pre>";
