<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>profil_index();</script>";?>
<img class=image src="img/logo.png" alt="Logo"/>
<h2> Mon Profil</h2>
<?php  include("inc/menu.inc.php")?>
</br>
<p> Tableau des données personnelles <!-- Récupérer nom de l'utilisateur --> </p></br>
<table border="2">
    <tr><th>id</th><th>nom</th><th>prenom</th><th>departement</th><th>codepostal</th><th>ville</th><th>email</th><th>tel</th><th>mdp</th><th>action</th></tr>
    <?php
    include('inc/connect.inc.php');
    $email=$_SESSION['login_user'];
    $sql="SELECT * FROM particulier where email='$email'";
    $result=$bdd->prepare($sql);
    $result->execute();

    //imprimer tous les lignes

        while($result_arr=$result->fetch(PDO::FETCH_ASSOC)){
            $id=$result_arr["Identifiant"];
            $nom=$result_arr['Nom'];
            $prenom=$result_arr['Prenom'];
            $dept=$result_arr['Departement'];
            $codepostal=$result_arr['CodePostal'];
            $ville=$result_arr['Ville'];
            $email=$result_arr['Email'];
            $tel=$result_arr['Tel'];
            $mdp=$result_arr['MdP'];

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

<?php
@include("inc/finXHTML.inc.php");
?>




