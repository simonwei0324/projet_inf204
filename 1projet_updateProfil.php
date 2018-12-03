<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>

<?php echo "<script type='text/javascript'>update_profil();</script>";?>
<?php include("consultation_update_profil.php")?>

<img class=image src="img/logo.png" alt="Logo"/>
<h1> INSCRIPTION</h1>

<form method="post" action="update_profil.php">
    <?php  include("inc/menu.inc.php")?>
    <br/>
    <fieldset>
        <legend><h3>MODIFICATION DE INFORMATIONS PERSONNELLES</h3></legend><br/>
        <table>
            <tr>
                <td>
                    <label for="">Nom :</label>
                </td>
                <td>
                    <input name="nom" type="text" value="<?php echo $nom?>"/><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="">Prénom :</label>
                </td>
                <td>
                    <input name="prenom" type="text" value="<?php echo $prenom?>"/><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="">Département :</label>
                </td>
                <td>
                    <input name="dep" type="text" value="<?php echo $dept?>"/><br>

                </td>
            </tr>
            <tr>
                <td>
                    <label for="">CodePostal :</label>
                </td>
                <td>
                    <input name="codepostal" type="text" value="<?php echo $codepostal?>"/><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="">Ville :</label>
                </td>
                <td>
                    <input name="ville" type="text" value="<?php echo $ville?>"/><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="">Adresse e-mail :</label>
                </td>
                <td>
                    <input name="mail" type="text" value="<?php echo $email?>"/><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="">Téléphone :</label>
                </td>
                <td>
                    <input name="tel" type="text" value="<?php echo $tel?>"/><br>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="submit" value="OK"/><br>
                </td>
            </tr>
        </table>
    </fieldset>
    <br/>
</form>

<?php
@include("inc/finXHTML.inc.php");
?>