<?php
session_start();
@require_once("inc/autoload.inc.php");
@include("inc/debutXHTML.inc.php");
?>
<?php echo "<script type='text/javascript'>update_mdp();</script>";?>
  <img class=image src="img/logo.png" alt="Logo"/>
   <form method="GET" action="update_motdepasse.php">
       <?php @include("inc/menu.inc.php");?>
    </br>
       <fieldset>
           <legend><h4>CHANGEMENT DE MOT DE PASSE</h4></legend></br>
       <table>
           <tr>
               <td>
                   <label for="">Utilisateur :</label>
               </td>
               <td>
                   <input name="util_nom" type="text"/>
               </td>
           </tr>
           <tr>
               <td>
                   <label for="">Ancien mot de passe :</label>

               </td>
               <td>
                   <input name="util_mdp" type="password"/>
               </td>
           </tr>
           <tr>
               <td>
                   <label for="">Nouveau mot de passe :</label>
               </td>
               <td>
                   <input name="util_mdp_new" type="password"/>
               </td>
           </tr>
           <tr>
               <td>
                   <label for="">Confirmation du nouveau mot de passe :</label>
               </td>
               <td>
                   <input name="mdp_new" type="password"/>
               </td>
           </tr>
            <tr>
                <td colspans="2"><input type="submit" value="OK"/> <br /></td>
            </tr>
       </table>
       </fieldset> <br />
   </form>
 <?php
 @include("inc/finXHTML.inc.php");
 ?>
