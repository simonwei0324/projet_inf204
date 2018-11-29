<?php
session_start();
?>
<html>
<head>
    <meta charset="utf-8" />
    <title>Mon Profil</title>
    <link rel="stylesheet" type="text/css" media="screen" href="1projet.css"/>

</head>
<body>
<img class=image src="logo.png"  alt="Logo"/>
<h2> Mon Profil</h2>
<!-- <form method="GET" action="ex5php.php"> -->

<div class="scrollmenu">
    <a href=1projet_Acc.html>Home </a>
    <a href="#news">News</a>
    <a href="#contact">Contact</a>
    <a href="1About.php">About</a>
    <a href="#contact">Contact</a>
    <a href="1About.php">About</a>
    <a href="#">bienvenue <?php echo  $_SESSION['login_user']?></a>

</div>



</br>
<p> Tableau des données personnelles <!-- Récupérer nom de l'utilisateur --> </p></br>
<table border="2">
    <tr><th>id</th><th>nom</th><th>prenom</th><th>departement</th><th>codepostal</th><th>ville</th><th>email</th><th>tel</th><th>mdp</th><th>action</th></tr>
    <?php
    include('connect.php');
    $email=$_SESSION['login_user'];
    $sql="SELECT * FROM particulier where email='$email'";
    $result=mysqli_query($con,$sql);
     //print_r($result);

   // $dataCount=mysqli_num_rows($result);

    //imprimer tous les lignes

    while($result_arr= mysqli_fetch_array($result)){
       // $result_arr=mysqli_fetch_assoc($result);

        $id=$result_arr[0];
        $nom=$result_arr[1];
        $prenom=$result_arr[2];
        $dept=$result_arr[3];
        $codepostal=$result_arr[4];
        $ville=$result_arr[5];
        $email=$result_arr[6];
        $tel=$result_arr[7];
        $mdp=$result_arr[8];

        //print_r($result_arr);
        echo "<tr><td>$id</td><td>$nom</td><td>$prenom</td><td>$dept</td><td>$codepostal</td><td>$ville</td>
              <td>$email</td><td>$tel</td><td>$mdp</td>
              <td><a href='1projet_updateProfil.php'>éditer</a>";


    }
    ?>

</table>



</br>
<a href=1projet_visuLog.php>Retour à la visualisation des mesures </a>
</br>

<a href="deleteUtilisateur.php">Supprimer mon compte </a>

</body>
</html>




