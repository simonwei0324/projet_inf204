<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>update_mdp();</script>";?>

<?php
include('inc/connect.inc.php');
// définition de la requête
$req_mdp = "SELECT mdp FROM particulier WHERE email = '".$_GET['util_nom']."';";
$req_update = "UPDATE particulier SET mdp = '".md5($_GET['util_mdp_new'])."' WHERE email = '".$_GET['util_nom']."';";
//echo $req_mdp;

// soumission de la requête
$resultat=$bdd->query($req_mdp);

// Récupération des données de la requête ligne à ligne
$ligne = $resultat->fetch(); 


if (md5($_GET['util_mdp']) == $ligne["mdp"] and md5($_GET['util_mdp_new']) == md5($_GET['mdp_new'])){
    $resultat=$bdd->query($req_update);
	
	echo "Le mot de passe est correct<br /> Cliquez <a href=","1projet_identification.php",">ici</a> pour acceder au site ";

}
else {
	echo "Mot de passe incorect<br /><a href=","1projet_identification.php",">Reessayez</a>";
}

?>
<?php
@include("inc/finXHTML.inc.php");
?>