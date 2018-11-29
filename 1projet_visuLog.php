<?php
session_start();

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
	<head>
		<meta charset="utf-8" />
		<title>ABOUT</title>
    <link rel="stylesheet" type="text/css" media="screen" href="1projet.css"/>

	</head>
	<body>
		<img class=image src="logo.png"  alt="Logo"/>
    <h2> Logged-in</h2>
		<!-- <form method="GET" action="ex5php.php"> -->

		<div class="scrollmenu">
		  <a href=1projet_Acc.html>Home </a>
		  <a href="#news">News</a>
		  <a href="#contact">Contact</a>
		  <a href="1About.php">About</a>

      <a id="profil" href="profil_index.php">bienvenue <?php echo  $_SESSION['login_user']?></a>
		</div>


		</br>
		<p> Bonjour, <!-- Récupérer nom de l'utilisateur --> </p></br>
		<p> Voici les données des départements que vous suivez :</p>

    <a href=1projet_visu.html>Voir les données d'autres départements </a>


	</body>
</html>
