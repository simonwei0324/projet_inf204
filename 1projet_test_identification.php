
<?php session_start();?>
<html>
	<head>
<title> Identifiants ATMO </title>
</head>

<body>

<?php
// Se connecter à la base de données extension PDO 
// Exemple :
//$bdd = new PDO('mysql:host=localhost;dbname=chc', 'root','')

//Prévoir les erreurs de connexion
try
{
	$bdd = new PDO('mysql:host=localhost; port=13306;dbname=VU', 'VU', 'd8geZZI5PygUsg', 	array(PDO::ATTR_ERRMODE => 	PDO::ERRMODE_EXCEPTION));
	$bdd->exec('SET NAMES utf8');
	}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
};

$req_mdp = "SELECT MdP FROM particulier WHERE Email = '".$_SESSION['id'] = $_GET['id']."';";
//echo $req_mdp;

// soumission de la requête
$resultat=$bdd->query($req_mdp);

// Récupération des données de la requête ligne à ligne
$ligne = $resultat->fetch(); 


if ($_GET['mdp'] == $ligne["MdP"]){
	echo "Le mot de passe est correct<br /> Cliquez <a href=","1projet_visuLog.php",">ici</a> pour acceder au site ";
	$_SESSION['nbessai'] = 1;

}
else {
	echo "Mot de passe incorect<br /><a href=","1projet_identification.php",">Reessayez</a>";
	$_SESSION['nbessai'] = $_SESSION['nbessai'] + 1;
	echo "<p> Essai numéro : ",$_SESSION['nbessai'],"</p>";

}

?> 
</body>
</html>