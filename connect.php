<?php

//  ici, deux méthode pour connecter la base de données.

$server="localhost";
$db_username="root";
$db_password="";

$con = mysqli_connect($server,$db_username,$db_password,'projet_inf204');//connexion à la base de données
if(!$con){
    die("can't connect".mysqli_error($con));//si échoué , imprimer erreur
}
mysqli_select_db($con,'projet_inf204');


/*
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=projet_inf204', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
};
*/


