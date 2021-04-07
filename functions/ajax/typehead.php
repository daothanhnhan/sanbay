<?php 
	$string = file_get_contents("http://sanbay.cafelinkcustomer.info/js/local.json");//echo $string;
	$json_a = json_decode($string, true);

	// echo $json_a[0]['name'];
	// echo $json_a[0]['districts'][0]['name'];
	// echo $json_a[0]['districts'][0]['wards'][0]['name'];
	// echo $json_a[0]['districts'][0]['wards'][0]['prefix'];
	// echo $json_a['Jennifer'][status];

	$typehead = array();
	foreach ($json_a as $key => $val) {
		foreach ($json_a[$key]['districts'] as $districts) {
			foreach ($districts as $wards) {
				foreach ($wards as $item) {
					// $demo = $item['name'] . ', ' . $districts['name'] . ', ' . $json_a[$key]['name'];
					$typehead[] = $item['name'] . ', ' . $districts['name'] . ', ' . $json_a[$key]['name'];
				}
			}
		}
	}
	// echo $demo;
	echo json_encode($typehead);
?>