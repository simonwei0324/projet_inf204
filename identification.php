<?php
/**
 * Created by PhpStorm.
 * User: weiliu
 * Date: 2018/11/27
 * Time: 10:58 PM
 */

    if(!isset($_POST["submit"])){
        exit("pas transport de données");
    }

    include('inc/connect.inc.php');
    $email = $_POST['email'];//post méthode
    $passowrd = md5($_POST['mdp']);// la méthode md5 pour mdp

    if ($email && $passowrd){ // si email et mdp sont pas vide
        $sql = "select * from particulier where email = '$email' and mdp='$passowrd'";
        $result=$bdd->query($sql);
        $rows=$result->fetchAll();
        $rowCount=count($rows);
        if($rowCount>0){//0 false 1 true
            session_start();
            $_SESSION['login_user'] = $email;
            $_SESSION['utilisateur']="simon";
            header("refresh:0;url=1projet_visuLog.php"); // login in vers la page url=1projet_visuLog.php
            exit();
        }else{
            echo "identifiant ou portable est incorrect";

            echo "
                    <script>
                            setTimeout(function(){window.location.href='1projet_identification.php';},1000);
                    </script>

                ";//1 seconde pour ves la page 1projet_identification.html
        }


    }else{//si email est vide
        echo "incomplet";
        echo "
                      <script>
                            setTimeout(function(){window.location.href='1projet_identification.php';},1000);
                      </script>";


    }
