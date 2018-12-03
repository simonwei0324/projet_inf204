<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>about();</script>";?>

<img class=image src="img/logo.png" alt="Logo"/>
    <h1> ABOUT</h1>
		<!-- <form method="GET" action="ex5php.php"> -->
        <?php  include("inc/menu.inc.php")?>
		</br>
		<p> Site web réalisé dans le cadre d'un projet INF204. </p><br></br>
		<p> Répartition des pages web :</p>
		<p> Charline CLAIN : page d'accueil, ... </p>
		<p> Liu WEI : ... </p>
		<p> Duc Khai VU : ...</p>
<?php
@include("inc/finXHTML.inc.php");
?>
