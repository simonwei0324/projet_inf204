<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>identification();</script>";?>
		<img class=image src="img/logo.png" alt="Logo"/>
    <h1> Connexion </h1>
		 <form method="post" action="identification.php">
             <?php  include("inc/menu.inc.php")?>
            <br/>

             <fieldset >
                 <legend><h4>INFORMATIONS PERSONNELLES</h4></legend><br />
                <table>
                    <tr>
                        <td>
                            <label for="">Email :</label>
                        </td>
                        <td>
                            <input name="email" type="text"/>
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
                        <td colspan="2">
                            <input type="submit" name="submit" value="OK"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <a href=1projet_changemdp.php>Changer de mot de passe</a>
                        </td>
                    </tr>
                </table>
             </fieldset>
             <br/>
		</form>
<?php
@include("inc/finXHTML.inc.php");
?>
