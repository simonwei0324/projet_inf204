<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>visuLog();</script>";?>

		<img class=image src="img/logo.png" alt="Logo"/>
        <h2> Logged-in</h2>
        <?php  include("inc/menu.inc.php")?>
		</br>
		<p> Bonjour, <?php echo  $_SESSION['utilisateur']?> <!-- Récupérer nom de l'utilisateur --> </p></br>
		<p> Voici les données des départements que vous suivez :</p>
         <a href=1projet_visu.html>Voir les données d'autres départements </a>

<?php
@include("inc/finXHTML.inc.php");
?>
