<?php
require_once __DIR__ . '/configuration.php';
$config = new JConfig();
$host = $config->host;
$port = 3306;
if (strpos($host, ':') !== false) {
    list($host, $port) = explode(':', $host);
}
$dsn = "mysql:host={$host};port={$port};dbname={$config->db};charset=utf8mb4";
$pdo = new PDO($dsn, $config->user, $config->password);
$prefix = $config->dbprefix;

echo "<pre>=== MENUS ===\n";
$stmt = $pdo->query("SELECT id, menutype, title, alias, link, type, home, published, parent_id, level FROM `{$prefix}menu` WHERE client_id = 0");
print_r($stmt->fetchAll(PDO::FETCH_ASSOC));

echo "\n=== MODULES ===\n";
$stmt = $pdo->query("SELECT id, title, module, position, published FROM `{$prefix}modules` WHERE client_id = 0");
print_r($stmt->fetchAll(PDO::FETCH_ASSOC));

echo "\n=== SP PAGE BUILDER PAGES ===\n";
$stmt = $pdo->query("SELECT id, title, published FROM `{$prefix}sppagebuilder`");
print_r($stmt->fetchAll(PDO::FETCH_ASSOC));
echo "</pre>";

