<?php
function outError($error)
{
    die("error|" . $error);
}


function printCWD()
{
    echo getcwd();
}
function printInfoServer()
{
    $contentUrl = "https://raw.githubusercontent.com/hexzzz2008/HexRequestAction-Pascal/main/server_info.json";
    $connect = file_get_contents($contentUrl);
    $json = json_decode($connect);
    foreach ($json as $name => $value) {
        echo $name . ": " . $value . "<br>";
    }
}
?>
