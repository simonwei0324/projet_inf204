<?php
/**
 * Created by PhpStorm.
 * User: weiliu
 * Date: 2018/11/27
 * Time: 10:58 PM
 */
    session_start();
    header("Content-Type: text/html; charset=utf8");
    if(!isset($_POST["submit"])){
        exit("pas transport de données");
    }

    include('connect.php');
    $email = $_POST['email'];//post méthode
    $passowrd = md5($_POST['mdp']);// la méthode md5 pour mdp

    if ($email && $passowrd){ // si email et mdp sont pas vide
        $sql = "select * from particulier where email = '$email' and mdp='$passowrd'";
        $result = mysqli_query($con,$sql);// excuter sql
        $rows=mysqli_num_rows($result);
        if($rows){//0 false 1 true

            $_SESSION['login_user'] = $email;
            header("refresh:0;url=1projet_visuLog.php"); // login in vers la page url=1projet_visuLog.php
            exit();
        }else{
            echo "identifiant ou portable est incorrect";

            echo "
                    <script>
                            setTimeout(function(){window.location.href='1projet_identification.html';},1000);
                    </script>

                ";//1 seconde pour ves la page 1projet_identification.html
        }


    }else{//si email est vide
        echo "incomplet";
        echo "
                      <script>
                            setTimeout(function(){window.location.href='1projet_identification.html';},1000);
                      </script>";


    }

    mysqli_close($con);