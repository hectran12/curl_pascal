<?php

// author: code by trantronghoa
// ver 0
// getcwd() - Get current
error_reporting(0);


// req , don't remove
require_once "proccess.php";
require_once "format.php";
require_once "check.php";
require_once "run.php";

$tags = [];
$tags[] = 'curl_close';
$tags[] = 'curl_copy_handle';
$tags[] = 'curl_errno';
$tags[] = 'curl_escape';
$tags[] = 'curl_exec';
$tags[] = 'curl_file_create';
$tags[] = 'curl_getinfo';
$tags[] = 'curl_init';
$tags[] = 'curl_multi_add_handle';
$tags[] = 'curl_multi_close';
$tags[] = 'curl_multi_exec';
$tags[] = 'curl_multi_getcontent';
$tags[] = 'curl_multi_info_read';
$tags[] = 'curl_multi_init';
$tags[] = 'curl_multi_remove_handle';
$tags[] = 'curl_multi_select';
$tags[] = 'curl_multi_setopt';
$tags[] = 'curl_multi_strerror';
$tags[] = 'curl_pause';
$tags[] = 'curl_reset';
$tags[] = 'curl_setopt';
$tags[] = 'curl_setopt_array';
$tags[] = 'curl_share_close';
$tags[] = 'curl_share_init';
$tags[] = 'curl_share_setopt';
$tags[] = 'curl_strerror';
$tags[] = 'curl_unescape';
$tags[] = 'curl_version';

$strCode = "";
$tags_prot = [];
$tags_prot[] = 'CURLOPT_AUTOREFERER';
$tags_prot[] = 'CURLOPT_BINARYTRANSFER';
$tags_prot[] = 'CURLOPT_BUFFERSIZE';
$tags_prot[] = 'CURLOPT_CAINFO';
$tags_prot[] = 'CURLOPT_CAPATH';
$tags_prot[] = 'CURLOPT_CLOSEPOLICY';
$tags_prot[] = 'CURLOPT_CONNECTTIMEOUT';
$tags_prot[] = 'CURLOPT_COOKIE';
$tags_prot[] = 'CURLOPT_COOKIEFILE';
$tags_prot[] = 'CURLOPT_COOKIEJAR';
$tags_prot[] = 'CURLOPT_COOKIESESSION';
$tags_prot[] = 'CURLOPT_CRLF';
$tags_prot[] = 'CURLOPT_CUSTOMREQUEST';
$tags_prot[] = 'CURLOPT_DNS_CACHE_TIMEOUT';
$tags_prot[] = 'CURLOPT_DNS_USE_GLOBAL_CACHE';
$tags_prot[] = 'CURLOPT_EGDSOCKET';
$tags_prot[] = 'CURLOPT_ENCODING';
$tags_prot[] = 'CURLOPT_FAILONERROR';
$tags_prot[] = 'CURLOPT_FILE';
$tags_prot[] = 'CURLOPT_FILETIME';
$tags_prot[] = 'CURLOPT_FOLLOWLOCATION';
$tags_prot[] = 'CURLOPT_FORBID_REUSE';
$tags_prot[] = 'CURLOPT_FRESH_CONNECT';
$tags_prot[] = 'CURLOPT_FTP_USE_EPRT';
$tags_prot[] = 'CURLOPT_FTP_USE_EPSV';
$tags_prot[] = 'CURLOPT_HEADER';
$tags_prot[] = 'CURLOPT_HEADERFUNCTION';
$tags_prot[] = 'CURLOPT_HTTP200ALIASES';
$tags_prot[] = 'CURLOPT_HTTPGET';
$tags_prot[] = 'CURLOPT_HTTPHEADER';
$tags_prot[] = 'CURLOPT_HTTPPROXYTUNNEL';
$tags_prot[] = 'CURLOPT_HTTP_VERSION';
$tags_prot[] = 'CURLOPT_INFILE';
$tags_prot[] = 'CURLOPT_INFILESIZE';
$tags_prot[] = 'CURLOPT_INTERFACE';
$tags_prot[] = 'CURLOPT_IPRESOLVE';
$tags_prot[] = 'CURLOPT_KEEP_CONNECTION';
$tags_prot[] = 'CURLOPT_LOW_SPEED_LIMIT';
$tags_prot[] = 'CURLOPT_LOW_SPEED_TIME';
$tags_prot[] = 'CURLOPT_MAXCONNECTS';
$tags_prot[] = 'CURLOPT_MAXREDIRS';
$tags_prot[] = 'CURLOPT_MUTE';
$tags_prot[] = 'CURLOPT_NETRC';
$tags_prot[] = 'CURLOPT_NOBODY';
$tags_prot[] = 'CURLOPT_NOPROGRESS';
$tags_prot[] = 'CURLOPT_NOSIGNAL';
$tags_prot[] = 'CURLOPT_PASSWDFUNCTION';
$tags_prot[] = 'CURLOPT_POST';
$tags_prot[] = 'CURLOPT_POSTFIELDS';
$tags_prot[] = 'CURLOPT_POSTQUOTE';
$tags_prot[] = 'CURLOPT_PRIVATE';
$tags_prot[] = 'CURLOPT_PROGRESSFUNCTION';
$tags_prot[] = 'CURLOPT_PROXY';
$tags_prot[] = 'CURLOPT_PROXYPORT';
$tags_prot[] = 'CURLOPT_PROXYTYPE';
$tags_prot[] = 'CURLOPT_PROXYUSERPWD';
$tags_prot[] = 'CURLOPT_PUT';
$tags_prot[] = 'CURLOPT_QUOTE';
$tags_prot[] = 'CURLOPT_RANDOM_FILE';
$tags_prot[] = 'CURLOPT_RANGE';
$tags_prot[] = 'CURLOPT_READDATA';
$tags_prot[] = 'CURLOPT_READFUNCTION';
$tags_prot[] = 'CURLOPT_REFERER';
$tags_prot[] = 'CURLOPT_RESUME_FROM';
$tags_prot[] = 'CURLOPT_RETURNTRANSFER';
$tags_prot[] = 'CURLOPT_SHARE';
$tags_prot[] = 'CURLOPT_SSLCERT';
$tags_prot[] = 'CURLOPT_SSLCERTPASSWD';
$tags_prot[] = 'CURLOPT_SSLCERTTYPE';
$tags_prot[] = 'CURLOPT_SSLENGINE';
$tags_prot[] = 'CURLOPT_SSLENGINE_DEFAULT';
$tags_prot[] = 'CURLOPT_SSLKEY';
$tags_prot[] = 'CURLOPT_SSLKEYPASSWD';
$tags_prot[] = 'CURLOPT_SSLKEYTYPE';
$tags_prot[] = 'CURLOPT_SSLVERSION';
$tags_prot[] = 'CURLOPT_SSL_CIPHER_LIST';
$tags_prot[] = 'CURLOPT_SSL_VERIFYHOST';
$tags_prot[] = 'CURLOPT_SSL_VERIFYPEER';
$tags_prot[] = 'CURLOPT_STDERR';
$tags_prot[] = 'CURLOPT_TIMECONDITION';
$tags_prot[] = 'CURLOPT_TIMEOUT';
$tags_prot[] = 'CURLOPT_TIMEVALUE';
$tags_prot[] = 'CURLOPT_TRANSFERTEXT';
$tags_prot[] = 'CURLOPT_UNRESTRICTED_AUTH';
$tags_prot[] = 'CURLOPT_UPLOAD';
$tags_prot[] = 'CURLOPT_URL';
$tags_prot[] = 'CURLOPT_USERAGENT';
$tags_prot[] = 'CURLOPT_USERPWD';
$tags_prot[] = 'CURLOPT_VERBOSE';
$tags_prot[] = 'CURLOPT_WRITEFUNCTION';
$tags_prot[] = 'CURLOPT_WRITEHEADER';
$tags_prot[] = 'CURLOPT_HTTP_VERSION';

if (isset($_GET["server"]) == "on") {
    
    if (isset($_GET["method"]) && isset($_GET["prot"]) && isset($_GET["return"]) && isset($_GET["url"])) {

        $method = $_GET["method"];
        $prot = $_GET["prot"];
        $return = $_GET["return"];
        $url = $_GET["url"];

        $code = "";
        try {
            if(strpos($prot, "|")) {
                createInit($code, $url);
                $checkProt = checkProt($prot, $tags_prot);
                if ($checkProt) {
    
                    addProt($code, "CURLOPT_CUSTOMREQUEST", $method);
                    foreach ($checkProt as $name => $value) {
                        addProt($code, $name, $value);
                    }
                    
                    createResultReturn($code);
    
                    $checkTags = checkProt($return, $tags);
                    if ($checkTags) {
                        foreach ($checkTags as $name => $value) {
                            returnAdd($code, $name, $value);
                        }
                        echo format_result(eval_code($code));
                    }
                } else {
                    outError("Problematic curl attribute ( format default: {name}:{value} )");
                }
            } else {
                outError("Error params");
            }
        } catch (Exception $e) {
            outError($e->getMessage());
        }
        

    } else {
        printCWD();
    }
} else {
    printInfoServer();
}