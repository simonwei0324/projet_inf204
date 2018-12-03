# projet_inf204
brouillon29/11

base de données est le fichier projet_inf204(1).sql
vous pouvez utiliser utilisateur simonwei0324@gmail.com , mdp:1234:)


le fichier autoload.inc.php , ca sert à rien .
il est utilisé pour le fichier class, la programmation orienté objet . donc ,on ignore ce ficher et méthode suivante:
#
function __autoload($nomClasse)

	{
		$nomFichier="class/".$nomClasse.".class.php";
		if (file_exists($nomFichier))
			// Charge la classe et stop le script si ne trouve pas
			require_once($nomFichier);
	        else
	          die("Le fichier ".$nomFichier." est introuvable.");
	}

#
 
