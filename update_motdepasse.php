<html>
	<head>
<title> Changement mot de passe </title>
</head>
<body>

<?php
// Se connecter à la base de données extension PDO 
// Exemple :
//$bdd = new PDO('mysql:host=localhost;dbname=chc', 'root','')

//Prévoir les erreurs de connexion
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=projet_inf204', 'root', '', 	array(PDO::ATTR_ERRMODE => 	PDO::ERRMODE_EXCEPTION));
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
};
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
	
	echo "Le mot de passe est correct<br /> Cliquez <a href=","1projet_identification.html",">ici</a> pour acceder au site ";

}
else {
	echo "Mot de passe incorect<br /><a href=","1projet_identification.html",">Reessayez</a>";
}

?> 
</body>
</html>