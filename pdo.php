<?php
try {
	$db = new PDO('mysql:host=localhost;dbname=filmovi_baza', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$db->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);
} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}
$db->query("set names utf8");

?>