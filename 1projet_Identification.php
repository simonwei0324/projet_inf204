<?php session_start();?>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Identifiants ATMO</title>
    <link rel="stylesheet" type="text/css" media="screen" href="1projet.css"/>

	</head>
<body>
<?php
if (!isset($_SESSION['nbessai']))
	{ $_SESSION['nbessai']=1;
	}
echo "<p> Essai numéro : ",$_SESSION['nbessai'],"</p>";

?>
		<img class=image src="logo.png"  alt="Logo"/>
    <h1> Connexion </h1>
		<form method="GET" action="1projet_test_identification.php">


		<div class="scrollmenu">
		  <a href=1projet_Acc.html>Home </a>
		  <a href="#news">News</a>
		  <a href="#contact">Contact</a>
		  <a href="1About.html">About</a>
      <a href="1projet_inscription.html">S'inscrire</a>
			<a href="1projet_identification.html">Connexion</a>
		</div>

		<p> </p>
    <br />


			<fieldset><legend><h4>IDENTIFIANTS</h4></legend><br />
						
					<img class=image.left src="mail.png"  alt="Mail" hspace=10 />
						<input name="id" type="text"/> <br /><br />
				
					<img class=image.left src="cle3.png"  alt="Mot de passe" hspace=10 />
					<input name="mdp" type="password"/>  <br /><br />
        	<input type="submit" name="OK" value="OK"/> <br /> <br />

				<a href=1projet_changemdp.html>Changer de mot de passe</a>



			</fieldset> <br />




		</form>
</body>
</html>
