<?php
/**
 * Created by PhpStorm.
 * User: weiliu
 * Date: 2018/11/27
 * Time: 3:50 PM
 */

header("Content-Type: text/html; charset=utf8");

if(!isset($_POST['submit'])){
    exit("pas transport de données");
}//vérifier soumettre les données


$password = $_POST['mdp'];
$confirmPassword = $_POST['mdp2'];
if ($password != $confirmPassword) {
    exit("mdp et mdp comfirmé sont pas pareils");
    header("refresh:300;url=1projet_inscription.html");
}


$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$departement=$_POST['dep'];
$codepostal=$_POST['codepostal'];
$ville=$_POST['ville'];
$email=$_POST['mail'];
$tel=$_POST['tel'];
$mdp=md5($_POST['mdp']);




include('connect.php');//connextion à la base de données
$userNameSQL =null;

$useremailSQL = "select * from particulier where email = '".$email."'";
$resultSet = mysqli_query($con,$useremailSQL);
if ($resultSet) {

    exit("email de client déja existé");

    echo "
                      <script>
                            setTimeout(function(){window.location.href='1projet_inscription.html';},1000);
                      </script>";

}


$q="insert into particulier(nom,prenom,departement,codepostal,ville,email,tel,mdp)
    values ('$nom','$prenom','$departement','$codepostal','$ville','$email','$tel','$mdp')";//向数据库插入表单传来的值的sql
$reslut=mysqli_query($con,$q);//excuter sql

if (!$reslut){
    die('Error: ' . mysqli_error());// si sql échoué ,imprimer erreur
}else{
    echo "enregistré";
    header("refresh:300;url=1projet_identification.html");
}



mysqli_close($con);
