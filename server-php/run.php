<?php

    function eval_code ($code) {
        $arrCode = array();
        eval($code);
        return $arrCode;
    }