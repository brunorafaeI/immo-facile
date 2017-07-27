<?php
include 'includes/includes.php';
/**
 * Les produits sont stockés dans le tableau php $products
 *
 * L'objectif est d'obtenir le même rendu que l'image listing-test.png avec 4 biens par ligne en résolution bureau.
 * 2 biens par ligne en résolution tablette
 * 1 bien par ligne en résolution smartphone
 * Pour chaque bien sous l'image, afficher le type de transaction, le type de bien, le budget, le nombre de pièce et la surface
 *
 *
 * l'utilisation d'internet est autorisé.
 * pour les images utiliser http://placehold.it/400x300
 *
 *
 * différentes utilisation des champs du tableau $products
 * 'products_model' => référence du bien
 * '65' => Ville de bien
 * '27' => Type de bien
 * 		1 => Appartement
 * 		2 => Maison
 * '28' => Type de transac
 * 		Vente => à vendre
 *    Location => à louer
 * '30' => Budget
 * '33' => Pièces
 * '34' => Surface
 *
 *
 */

?>
<!DOCTYPE html>
<html>
	<head>
		<title>Test AC3</title>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
		<link href="./assets/style.css" rel="stylesheet">		
	</head>
	<body>
	
	
		<?php include 'includes/navbar.php'; ?>

		<?php include 'includes/products.php'; ?>
		



		<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>		
		<script src="./assets/script.js"></script>
		
	</body>
</html>