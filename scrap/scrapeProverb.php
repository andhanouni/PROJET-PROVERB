<?php

/*Connexion BDD*/
//root, mot de passe etc...

/*Connexion BDD*/
$servername = "localhost";
$username = "root";
$password = "samszo";
$dbname = "proverbdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
mysqli_set_charset($conn, "utf8");

// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}


$i = 1;
while($i < 802){
	$url = "http://www.unproverbe.com/les-proverbes.html?page=".$i."&p=".$i."&call=1";
	echo "Page n".$i."</br>";
	echo "url : ".$url."</br>";
	$ch = curl_init(); 
	$timeout = 5; // set to zero for no timeout 
	curl_setopt ($ch, CURLOPT_URL, $url); 
	curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1); 
	curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout); 
	$file_contents = curl_exec($ch); 
	curl_close($ch); 
	//echo $file_contents;
	
	if(preg_match_all('#title=\"([^\"]+)\" class=\"flagProv\" >([^<]+)<\/a> {1,100}<br \/> {1,100}<strong>([^<]+)<\/strong>#',$file_contents,$m))   
		$out = $m;
	
	foreach($out as $k => $v){
		
		$sql ="INSERT INTO pages (urlPage) VALUES ('".$url."')";
		$conn->query($sql);
		$idPage = $conn->insert_id;
		
		//echo "vvv : ".$v;
		foreach($v as $k1 => $v1){
			$v1 = preg_replace('"<[^<]*>"','',$v1);
			//echo $out[0][0] ."\n";
			if(preg_match('#title=\"([^\"]+)\"#',$v1,$m))
				$location = $m[1];
			if(preg_match('#> ([^\.]+)\.#',$v1,$m))
				$proverbe = $m[1];
			if(preg_match('#\. ([^\"]+) ?#',$v1,$m))
				$categorie = $m[1];

			echo "location : ".$location."</br>";
			echo "proverbe : ".$proverbe."</br>";
			echo "categorie : ".$categorie."</br>";
			echo "---------------------------------</br>";

			$sql ='INSERT INTO proverbes (langue, idPage, proverbe, categorie) VALUES ("'.$location.'",'.$idPage.',"'.$proverbe.'","'.trim($categorie).'")';
			$conn->query($sql);
				


		}
		echo "//////////////////////////////////////////////////////</br>";
		break;	
	}	
	
$i++;	
}


?>