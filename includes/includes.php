<?php
$dsn = 'mysql:dbname=immofacile;host=127.0.0.1';
$user = 'root';
$password = 'brsilva';

try {
	$dbh = new PDO($dsn, $user, $password);
} catch (Exception $e) {
	echo $e->getMessage();
	die;
}

$sql = "SELECT * FROM `products_criteres_cache`";
$req = $dbh->prepare($sql);
$req->execute();
$products = $req->fetchAll(PDO::FETCH_ASSOC);
