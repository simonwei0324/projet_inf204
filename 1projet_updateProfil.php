<?php
session_start();

    include('connect.php');
    $email=$_SESSION['login_user'];
    $sql="SELECT * FROM particulier where email='$email'";
    $result=mysqli_query($con,$sql);
     //print_r($result);

   // $dataCount=mysqli_num_rows($result);


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


    }
?>
<html>
<head>
    <meta charset="utf-8" />
    <title>ATMO</title>
    <link rel="stylesheet" type="text/css" media="screen" href="1projet.css"/>

</head>
<body>
<img class=image src="logo.png"  alt="Logo"/>
<h1> INSCRIPTION</h1>

<form method="post" action="update_profil.php">

    <div class="scrollmenu">
        <a href=1projet_Acc.html>Home </a>
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
        <a href="#">bienvenue <?php echo $_SESSION['login_user']?></a>
    </div>
    <p> </p>
    <br/>

    <br/>
    <fieldset><legend><h3>MODIFICATION DE INFORMATIONS PERSONNELLES</h3></legend><br/>
        <label> Nom : <input name="nom" type="text" value="<?php echo $nom?>"/> </label> <br/><br/>
        <label> Prénom : <input name="prenom" type="text" value="<?php echo $prenom?>"/> </label> <br/><br/>
        <label> Département : <input name="dep" type="text" value="<?php echo $dept?>"/> </label> <br/><br/>
        <label> CodePostal : <input name="codepostal" type="text" value="<?php echo $codepostal?>"/> </label> <br/><br/>
        <label> Ville : <input name="ville" type="text" value="<?php echo $ville?>"/> </label> <br /><br/>
        <label> Adresse e-mail : <input name="mail" type="text" value="<?php echo $email?>"/> </label> <br /><br/>
        <label> Téléphone : <input name="tel" type="text" value="<?php echo $tel?>"/> </label> <br/><br />
        <input type="submit" name="submit" value="OK"/> <br /> <br />

    </fieldset>
    <br/>




</form>
</body>
</html>