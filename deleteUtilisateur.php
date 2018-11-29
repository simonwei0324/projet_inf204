<?php
/**
 * Created by PhpStorm.
 * User: weiliu
 * Date: 2018/11/29
 * Time: 3:30 PM
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


    $email=$_SESSION['login_user'];
    $sql="DELETE FROM particulier WHERE email='".$email."';";
    if($bdd->exec($sql)) {
        echo "supprimé！<br>";
        echo "
                    <script>
                            setTimeout(function(){window.location.href='1projet_identification.html';},1000);
                    </script>";
    }
    else {
        echo "suppression échoué！<br>";
        echo "
                    <script>
                            setTimeout(function(){window.location.href='#';},1000);
                    </script>";
    }

