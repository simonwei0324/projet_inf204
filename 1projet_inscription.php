<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>inscription();</script>";?>
		<img class=image src="img/logo.png" alt="Logo"/>
    <h1> INSCRIPTION</h1>
		<form method="post" action="inscription.php">
            <?php  include("inc/menu.inc.php")?>
 	        <br/>
            <fieldset>
                <legend><h3>INFORMATIONS PERSONNELLES</h3></legend><br/>
                <table>
                    <tr>
                        <td>
                            <label for="">Nom :</label>
                        </td>
                        <td>
                            <input name="nom" type="text"/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">Prénom :</label>
                        </td>
                        <td>
                            <input name="prenom" type="text"/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">Département :</label>
                        </td>
                        <td>
                            <input name="dep" type="text"/><br>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">CodePostal :</label>
                        </td>
                        <td>
                            <input name="codepostal" type="text"/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">Ville :</label>
                        </td>
                        <td>
                            <input name="ville" type="text"/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">Adresse e-mail :</label>
                        </td>
                        <td>
                            <input name="mail" type="text"/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">Téléphone :</label>
                        </td>
                        <td>
                            <input name="tel" type="text"/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">Mot de passe :</label>
                        </td>
                        <td>
                            <input name="mdp" type="password"/><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="">Confirmation mot de passe :</label>
                        </td>
                        <td>
                            <input name="mdp2" type="password"/><br>
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
