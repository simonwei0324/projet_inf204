<div class="scrollmenu">
    <a href=1projet_Acc.php>Home </a>
    <a href="#news">News</a>
    <a href="#contact">Contact</a>
    <a href="1About.php">About</a>
    <?php
    if(isset($_SESSION['login_user'])){
        echo "<a href='profil_index.php'>bienvenue"." ".$_SESSION['login_user']."</a>";
        echo "<b><a href='logout.php'>Déconnexion</a></b>";

    }else{
        echo "<a href='1projet_inscription.php'>S'inscrire</a>
			            <a href='1projet_identification.php'>Connexion</a>";
    }

    ?>
</div>