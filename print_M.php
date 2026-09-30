<?php

function printM(string $texto, int $velocidade){
    for ($i=0; $i < mb_strlen($texto, 'UTF-8'); $i++) { 
        print mb_substr($texto, $i, 1, "UTF-8");
        usleep($velocidade * 1000);
    }
}
