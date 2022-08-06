<?php

function createInit (&$code, $url) {
    $code .= '$ch = curl_init();';
    $code .= 'curl_setopt($ch, CURLOPT_URL, "' . $url . '");';
}

function addProt (&$code, $prot, $value) {
    if ($value == "true" || $value == "false") {
        $code .= 'curl_setopt($ch, ' . $prot . ', ' . $value . ');';
    } else {
        $code .= 'curl_setopt($ch, ' . $prot . ', "' . $value . '");';
    }
}

function createResultReturn (&$code) {
    $code .= '$arrCode = array();';
}


function returnAdd (&$code, $prot, $value) {
    if ($value == 'self') {
        $code .= '$arrCode["' . $prot . '"] = '. $prot . '($ch);';
    } 
}


function format_result ($code) {
    $dau = '[tronghoa-8947575745]';
    $cuoi = '[tronghoa-4934u85485]';
    $dauvalue = '[tronghoa-7928696969]';
    $cuoivalue = '[tronghoa-898989898]';
    $str = "";
    foreach ($code as $name => $value) {
        $str .= $dau.$name.$cuoi.$dauvalue.$value.$cuoivalue;
    }
    return $str;
}