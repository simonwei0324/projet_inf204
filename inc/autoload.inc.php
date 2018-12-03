<?php 

function __autoload($nomClasse)
	{
		$nomFichier="class/".$nomClasse.".class.php";
		if (file_exists($nomFichier))
			// Charge la classe et stop le script si ne trouve pas
			require_once($nomFichier);
	        else
	          die("Le fichier ".$nomFichier." est introuvable.");
	}

 ?>