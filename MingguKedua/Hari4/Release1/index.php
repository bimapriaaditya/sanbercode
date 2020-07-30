<?php 

require_once ('Frog.php');
require_once ('Ape.php');

$sungokong = new Ape("kera sakti");
echo "Kera Sakti :" . $sungokong->yell(); // "Auooo"


$kodok = new Frog("buduk");
echo " Kodok Buduk :" . $kodok->jump() ; // "hop hop"

?>