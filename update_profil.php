<?php
/**
 * Created by PhpStorm.
 * User: weiliu
 * Date: 2018/11/28
 * Time: 10:15 PM
 */

session_start();
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

$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$departement=$_POST['dep'];
$codepostal=$_POST['codepostal'];
$ville=$_POST['ville'];
$email=$_POST['mail'];
$tel=$_POST['tel'];

// définition de la requête
$req_update = "UPDATE particulier SET nom = '".$nom."',prenom='".$prenom."',departement='".$departement."'
				,codepostal='".$codepostal."',ville='".$ville."',email='".$email."',tel='".$tel."'
 				WHERE email = '".$_SESSION['login_user']."';";
//echo $req_mdp;

// soumission de la requête
$resultat=$bdd->query($req_update);


if ($resultat){

	echo "modifié ";
    echo "
                      <script>
                            setTimeout(function(){window.location.href='1projet_visuLog.php';},1000);
                      </script>";

}
else {
	echo "modification échoué<br /><a href=","1projet_updateProfil.php",">Reessayez</a>";
}

?>


