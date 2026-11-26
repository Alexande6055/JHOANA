<?php
echo "PHP VERSION: " . PHP_VERSION . "<br>";
echo "PHP SAPI: " . PHP_SAPI . "<br>";
echo "MYSQLI: " . (extension_loaded("mysqli") ? "OK" : "NO") . "<br>";
echo "PDO MYSQL: " . (extension_loaded("pdo_mysql") ? "OK" : "NO") . "<br>";
echo "INTL: " . (extension_loaded("intl") ? "OK" : "NO") . "<br>";
echo "GD: " . (extension_loaded("gd") ? "OK" : "NO") . "<br>";
?>
