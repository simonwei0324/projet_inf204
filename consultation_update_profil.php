<?php
/**
 * Created by PhpStorm.
 * User: weiliu
 * Date: 2018/12/2
 * Time: 2:50 PM
 */

include('inc/connect.inc.php');
$email=$_SESSION['login_user'];
$sql="SELECT * FROM particulier where email='$email'";
$result=$bdd->prepare($sql);
$result->execute();

//imprimer tous les lignes

while($result_arr=$result->fetch(PDO::FETCH_ASSOC)) {
    $id = $result_arr["Identifiant"];
    $nom = $result_arr['Nom'];
    $prenom = $result_arr['Prenom'];
    $dept = $result_arr['Departement'];
    $codepostal = $result_arr['CodePostal'];
    $ville = $result_arr['Ville'];
    $email = $result_arr['Email'];
    $tel = $result_arr['Tel'];
    $mdp = $result_arr['MdP'];
}
