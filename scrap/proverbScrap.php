<?php

/*Connexion BDD*/





//sql_connect();

$i = 1;
while($i < 802){
	$url = "http://www.unproverbe.com/les-proverbes.html?page=".$i."&p=".$i."&call=1";
	$code_source_page = file_get_contents($url);
	$tab_block = preg_split('#id=\"provNorm\"#',$code_source_page);
	foreach($tab_block as $k => $v){
		if(preg_match('#title=\"([^\"]+)\"#U',$v,$m))   
			$location = $m[1];
		if(preg_match('#<strong>([^<]+)<\/strong>#',$v,$m)) 
			$categorie = $m[1];
		if(preg_match('#class=\"flagProv\" >([^<]+)<\/a>#',$v,$m)) 
			$proverbe = $m[1];

		print_r($tab_block);
		//$req ="INSERT INTO";
		//$res =sql($req);
	}
$i++;	
}

//sql_close();

?>