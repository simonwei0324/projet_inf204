<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>acceuil();</script>";?>
		<img class=image src="img/logo.png" alt="Logo"/>
    <h1> Bienvenue sur la page de presentation des données de surveillance de la qualité de l'air</h1>
		<form method="GET" action="">
            <?php @include("inc/menu.inc.php");?>
		    <a href="1projet_visu.html">Visualisation des données par département</a></br>
			<img class=carte src="map.png"  alt="Map"/>
			<input type="submit" name="OK" value="OK"/> <br />
			<input type="submit" name="SUP" value="Supprimer"/> <br />
			<input type="submit" name="AJO" value="Ajouter"/> <br />
		</form>
<?php
@include("inc/finXHTML.inc.php");
?>
