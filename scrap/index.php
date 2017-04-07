<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div align="center">
	<h1>Web Scraping</h1>
</div>
<hr>
<?php
	    // Include Files
	    include('lib/simple_html_dom.php');
	    include('bdd/connect.php');
	    global $conn;
	    set_time_limit(0);

		    $debI = 1;
		    $m = 'femme';

	    // Boucle for pages
	    for($i=$debI;$i<20;$i++){

	        $lngProverbe = 'français';

	        // Set Url Dynamicly
	        $url = 'http://www.unproverbe.com/?page=2&motc='. $m.'&ok=Chercher&p='.$i.'&call=1';

	        $page = file_get_html($url);

	        if(!empty($page)){
	        	//Insert Url in Table Pages
		        $sql = "INSERT INTO pages (urlPage) VALUES ('".$url."')";
		        $conn->query($sql);

	        }

	        //Get List of Roverbs
	        $proverbes = $page->find('#provNorm > a');

	        // exist for and go to next letter
			if(empty($proverbes)){
				echo '<h3 class="title4">Fin du traitement pour la page : ' . $i . ': '.$url.'</h3>';
				break;
			}

	        $counterProverbe = 0;
	        foreach($proverbes as $proverbe)
	        {
	        	$counterProverbe++;
						echo $proverbe->plaintext;
						$deb = stripos($proverbe,'alt="');
						$fin = stripos($proverbe,'title="')-$deb-7;
						//echo $deb.' '.$fin.' ';
						echo substr($proverbe, $deb+5,$fin)."<br/>";
						//$xml=simplexml_load_string(str_replace('."</a>','</img>."</a>',$proverbe)) or die("Error: Cannot create object");
						//print_r($xml);
						//echo  $xml->title.'<br/>';
	            /* get Last idPage insered
	            $sql = "SELECT MAX(idPage) FROM pages";
	            $row = $conn->query($sql);
	            $maxId = $row->fetch_assoc();

	            // 0 if traduction of proverbe does not exist
	            $idProverbeTraduction = 0;

	            // Delete Balise <strong></strong>
	            preg_match_all("|<[^>]+>(.*)</[^>]+>|U",$proverbe, $out, PREG_PATTERN_ORDER);

	            //Solve probleme UTF8
	            $proverbe = utf8_decode(addslashes($out[1][0]));

	            if(!empty($proverbe)){
	            	// Insert proverb in Table Proverbes
		            $sql = "INSERT INTO proverbes (proverbeContent, idPage, lngProverbe, idProverbeTraduction)
		                    VALUES ('".$proverbe."',".$maxId['MAX(idPage)'].",'".$lngProverbe."',".$idProverbeTraduction.")";

		           $conn->query($sql);
	            }
							*/

	        }
				}
?>

</body>
</html>
