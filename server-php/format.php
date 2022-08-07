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

function createHeader (&$code) {
    $code .= 'curl_setopt($ch, CURLOPT_HTTPHEADER, array(';
}

function addHeader (&$code, $header) {
    $code .= '"' . $header . '",';
}

function finalHeader (&$code) {
    $code .= '));';
}

function format_result ($code) {
    $str = "";
    foreach ($code as $name => $value) {
        $str .= $name . "|" . encode($value) . ",";
    }
    return substr($str, 0, -1);
}
