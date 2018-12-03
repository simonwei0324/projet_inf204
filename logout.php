<?php 
    session_start();
    unset($_SESSION['login_user']);
    header("Location: 1projet_Identification.php");

