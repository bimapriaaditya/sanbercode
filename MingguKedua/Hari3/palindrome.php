<?php

function palindromeAngka($input)
{
    for($i = $input; $i <= 2000; $i++){
        if(strrev($i) == $i){
            echo $i . "<br>";
            break;  
        }
        
    }

} 
echo palindromeAngka(9);
echo palindromeAngka(10);
echo palindromeAngka(117);
echo palindromeAngka(175);
echo palindromeAngka(1000);

?>