<?php
session_start();

?>
<html>
	<head>
		<meta charset="utf-8" />
		<title>ABOUT</title>
    <link rel="stylesheet" type="text/css" media="screen" href="1projet.css"/>

	</head>
	<body>
		<img class=image src="logo.png"  alt="Logo"/>
    <h1> ABOUT</h1>
		<!-- <form method="GET" action="ex5php.php"> -->

		<div class="scrollmenu">
		  <a href=1projet_Acc.html>Home </a>
		  <a href="#news">News</a>
		  <a href="#contact">Contact</a>
		  <a href="1About.php">About</a>
            <?php
                if(isset($_SESSION['login_user'])){



                }else{
                    echo "<a href='1projet_inscription.html'>S'inscrire</a>
			            <a href='1projet_identification.html'>Connexion</a>";
                }

            ?>
            <!--
			<a href="1projet_inscription.html">S'inscrire</a>
			<a href="1projet_identification.html">Connexion</a>
			-->
		</div>
		</br>
		<p> Site web réalisé dans le cadre d'un projet INF204. </p><br></br>
		<p> Répartition des pages web :</p>
		<p> Charline CLAIN : page d'accueil, ... </p>
		<p> Liu WEI : ... </p>
		<p> Duc Khai VU : ...</p>



	<!---
			<fieldset><legend><h4>INFORMATIONS PERSONNELLES</h4></legend>
				<label> Nom : <input name="nom" type="text"/> </label> <br /><br />
				<label> Mot de passe : <input name="mdp" type="password"/> </label> <br /><br />
      </fieldset> <br />
 --->




	</body>
</html>
