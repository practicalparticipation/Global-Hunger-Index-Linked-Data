<?php
include_once("config.php");

$data = json_decode(file_get_contents("http://api.kasabi.com/dataset/global-hunger-index/apis/sparql?apikey=".$kasabi_api_key."&output=xml&query=PREFIX+owl%3A+<http%3A%2F%2Fwww.w3.org%2F2002%2F07%2Fowl%23>%0D%0APREFIX+rdf%3A+<http%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23>%0D%0APREFIX+rdfs%3A+<http%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23>%0D%0A%0D%0ASELECT+%3Fcountry+WHERE+{%0D%0A++%0D%0A++%3Fcountry+owl%3AsameAs+%3Fontologies.+%0D%0A%0D%0A}%0D%0A"));

print_r($data);

?>