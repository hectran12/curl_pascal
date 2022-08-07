<?php

    function checkProt ($prot, $protlist) {
        $ar = explode(",", $prot);
        $result = array();
        foreach ($ar as $item) {
            $exp = explode('|', $item);
            $name = $exp[0];
            $value = $exp[1];
            if ($name == '' || $value == '') {
                return false;
            } else {
                if (!in_array($name, $protlist)) {
                    return false;
                } else {
                    $result[$name] = $value;
                }
            }
        }
        return $result;
    }

    function checkHeader ($header) {
        $arr = explode(",", $header);
        if (count($arr) > 1) {
            return $arr;
        } else {
            return false;
        }
    }
?>