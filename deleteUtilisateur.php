<?php
/**
 * Created by PhpStorm.
 * User: weiliu
 * Date: 2018/11/29
 * Time: 3:30 PM
 */

session_start();

include('inc/connect.inc.php');

    $email=$_SESSION['login_user'];
    $sql="DELETE FROM particulier WHERE email='".$email."';";
    if($bdd->exec($sql)) {
        echo "supprimé！<br>";
        echo "
                    <script>
                            setTimeout(function(){window.location.href='1projet_identification.php';},1000);
                    </script>";
    }
    else {
        echo "suppression échoué！<br>";
        echo "
                    <script>
                            setTimeout(function(){window.location.href='#';},1000);
                    </script>";
    }

