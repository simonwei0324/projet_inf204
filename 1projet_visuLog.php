<?php session_start();?>

<html>
	<head>
		<meta charset="utf-8" />
		<title>Les données de votre département</title>
    <link rel="stylesheet" type="text/css" media="screen" href="1projet.css"/>

	</head>
	<body>
		<img class=image src="logo.png"  alt="Logo"/>
    <h2> Logged-in</h2>


		<div class="scrollmenu">
		  <a href=1projet_Acc.html>Home </a>
		  <a href="#news">News</a>
		  <a href="#contact">Contact</a>
		  <a href="1About.html">About</a>
			<a href="1projet_inscription.html">S'inscrire</a>
			<a href="1projet_identification.html">Connexion</a>
      <a id="profil" href="1projet_profil.html">Mon Profil</a>

		</div>

<table>
	<thead>
		<tr>
			<th>Département</th>
			<th>Station</th>
			<th>Polluant</th>
			<th>Mesure</th>
			<th>Date</th>
			<th>Heure</th>
			<th>Alerte</th>
		</tr>
	</thead>
	<tbody>
	

<?php


// Se connecter à la base de données extension PDO 
// Exemple :
//$bdd = new PDO('mysql:host=localhost;dbname=chc', 'root','')

//Prévoir les erreurs de connexion

try
{
	$bdd = new PDO('mysql:host=localhost; port=13306;dbname=VU', 'VU', 'd8geZZI5PygUsg', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	$bdd->exec('SET NAMES utf8');
	}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
};

//Requête Prénom patient
$req_pre = "SELECT Prenom FROM particulier WHERE Email = '".$_SESSION['id']." ";
//echo $req_pre;
$resultat=$bdd->query($req_pre);
$ligne = $resultat->fetch(); 

echo '<br /><FONT SIZE=4>','Bonjour ', $ligne['Prenom'] , ', </FONT><br /> <br />   Voici les données des départements que vous suivez :'," <br /><br /> \n";

$resultat->closeCursor();


// Définition de la requête pour le tableau
$req = "SELECT * 
		FROM rel_part_dpt, particulier, station, mesure, polluant
		WHERE particulier.Identifiant = rel_part_dpt.id_part 
			AND rel_part_dpt.num_dept=station.num_dept
			AND mesure.num_polluant = polluant.id_polluant
			AND station.id_station = mesure.num_station
			AND Email = '".$_SESSION['id']."
		ORDER BY rel_part_dpt.num_dept";
//echo $req;
				
// Soumission de la requête
$resultat=$bdd->query($req);
$ligne = $resultat->fetch(); 

  while ($ligne)
	{   

?>
	<tr>
		<td><?php echo $ligne['num_dept']; ?></td>
		<td><?php echo $ligne['ville']; ?></td> 
		<td><?php echo $ligne['nom_polluant']; ?></td> 
		<td><?php echo $ligne['mesure'], ' ', null != ($unite=$ligne['unite_mesure'])? $unite : "??"; ?></td> 
		<td><?php echo $ligne['date_mesure'] ; ?></td> 
		<td><?php echo $ligne['heure_mesure'];?></td>
		<?php 
			if ($ligne['mesure'] < $ligne['seuil_info']) {
				echo "<td align=center bgcolor='#01DF01'>OK";
			}
			else {
				echo "<td bgcolor='#FF0000'>Valeur trop haute ! ";
			}; ?></td> 
	</tr>
<?php
// Récupération des données de la requête ligne à ligne
	$ligne = $resultat->fetch(); 
	}; // fin while

// Fermeture du curseur d’analyse des résultats
$resultat->closeCursor();

?> 

</table>
<br/>
<br/>
    <a href=1projet_visu.html>Voir les données d'autres départements </a>


	</body>
</html>
