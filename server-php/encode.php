<?php

    $charactes = array();
    $charactes["a"] = "Vkb";
    $charactes["b"] = "Qhp";
    $charactes["c"] = "Uqc";
    $charactes["d"] = "Azq";
    $charactes["e"] = "Ggj";
    $charactes["f"] = "Uvj";
    $charactes["g"] = "Pam";
    $charactes["h"] = "Nal";
    $charactes["i"] = "Gui";
    $charactes["j"] = "Odk";
    $charactes["k"] = "Hsf";
    $charactes["l"] = "Ffh";
    $charactes["m"] = "Grl";
    $charactes["n"] = "Mqg";
    $charactes["o"] = "Nwa";
    $charactes["p"] = "Wut";
    $charactes["q"] = "Uwf";
    $charactes["r"] = "Wrf";
    $charactes["s"] = "Lxm";
    $charactes["t"] = "Fkh";
    $charactes["u"] = "Awt";
    $charactes["v"] = "Jwa";
    $charactes["w"] = "Vqg";
    $charactes["x"] = "Nin";
    $charactes["y"] = "Fae";
    $charactes["z"] = "Tdr";
    $charactes["A"] = "Yyn";
    $charactes["B"] = "Cir";
    $charactes["C"] = "Ipl";
    $charactes["D"] = "Rqy";
    $charactes["E"] = "Bfb";
    $charactes["F"] = "Eck";
    $charactes["G"] = "Bmm";
    $charactes["H"] = "Ece";
    $charactes["I"] = "Mue";
    $charactes["J"] = "Tqg";
    $charactes["K"] = "Tfh";
    $charactes["L"] = "Jgi";
    $charactes["M"] = "Wdk";
    $charactes["N"] = "Vfi";
    $charactes["O"] = "Ubd";
    $charactes["P"] = "Kfq";
    $charactes["Q"] = "Gqu";
    $charactes["R"] = "Wyd";
    $charactes["S"] = "Trn";
    $charactes["T"] = "Pvh";
    $charactes["U"] = "Esw";
    $charactes["V"] = "Wke";
    $charactes["W"] = "Nen";
    $charactes["X"] = "Ioe";
    $charactes["Y"] = "Nmn";
    $charactes["Z"] = "Zlr";
    $charactes["0"] = "Pwc";
    $charactes["1"] = "Ush";
    $charactes["2"] = "Kuc";
    $charactes["3"] = "Hlx";
    $charactes["4"] = "Kot";
    $charactes["5"] = "Hut";
    $charactes["6"] = "Gqk";
    $charactes["7"] = "Kee";
    $charactes["8"] = "Agy";
    $charactes["9"] = "Hbk";
    $charactes["\\"] = "Jps";
    $charactes["/"] = "Adz";
    $charactes[";"] = "Fvn";
    $charactes["'"] = "Bjb";
    $charactes['"'] = "Pzf";
    $charactes[")"] = "Qse";
    $charactes["("] = "Rrv";
    $charactes["*"] = "Kst";
    $charactes["&"] = "Ocw";
    $charactes["^"] = "Sdb";
    $charactes["%"] = "Kmb";
    $charactes["$"] = "Yhh";
    $charactes["#"] = "Teg";
    $charactes["@"] = "Xee";
    $charactes["!"] = "Yet";
    $charactes["+"] = "Lhk";
    $charactes["-"] = "Fzy";
    $charactes["_"] = "Hwi";
    $charactes[","] = "Zrs";
    $charactes[">"] = "Cby";
    $charactes["<"] = "Apw";
    $charactes["?"] = "Xka";
    $charactes["`"] = "Hih";
    $charactes["["] = "Ptm";
    $charactes["]"] = "Emq";
    $charactes["{"] = "Aah";
    $charactes["}"] = "Juu";
    $charactes["."] = "Swq";
    $charactes["="] = "Kju";
    $charactes[" "] = "Lkh";
    $charactes[":"] = "Awv";
    
    function encode($text) {
        global $charactes;
        $result = '';
        for ($i = 0; $i < strlen($text); $i++) {
            $char = $text[$i];
            $result .= $charactes[$char] == null ? 'Vfj' : $charactes[$char];
        }
        return $result;
    }

    function decode($text) {
        // decode
        global $charactes;
        $result = '';
        $baoton = '';
        $charact = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        for ($i = 0; $i < strlen($text); $i++) {
            $char = $text[$i];
            $baoton .= $char;
            if (strlen($baoton) == 3) {
                $result .= array_search($baoton, $charactes);
                $baoton = '';
            }
        }
        return $result;
    }