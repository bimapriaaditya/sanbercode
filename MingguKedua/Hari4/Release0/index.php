<?php

require ('animal.php');

$sheep = new Animal("shaun");

echo "Namanya :" .$sheep->name; // "shaun"
echo $sheep->legs; // 2
echo $sheep->coldBlooded; // false

?>