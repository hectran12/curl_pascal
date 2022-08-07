<?php
    // left
    function left_explode ($str, $delimiter) {
        $arr = explode($delimiter, $str);
        for ($i = 0; $i < count($arr)-1; $i++) {
            if ($i == 0) {
                $result .= $arr[$i];
            } else {
                $result .= $delimiter . $arr[$i];
            }
        }
        return $result;
    }