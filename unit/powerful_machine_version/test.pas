program main;
uses crt, curl_pascal;
var demo: curl;
    data: string;
const HOST = 'localhost'; PORT = 8080;
begin
{
  demo := curl_new('https://kiemtraip.com/raw.php', HOST, PORT, GET);
  demo.properties := setProperties(demo, CURLOPT_RETURNTRANSFER, 'true');
  demo.properties := setProperties(demo, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 Edg/103.0.1264.77');
  demo.headers := setHeader(demo, 'Content-Type: text/html; charset=UTF-8');
  demo.headers := setHeader(demo, 'Content-Length: 35');
  demo.return := setReturn(demo, curl_exec);
  demo.return := setReturn(demo, curl_errno);
  demo.exec := actionRequest(demo);
  write(demo.exec.exec[0].value_return);
}
  demo := curl_new('https://traodoisub.com/home/', HOST, PORT, GET);
  demo.properties := setProperties(demo, CURLOPT_RETURNTRANSFER, 'true');
  demo.properties := setProperties(demo, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 Edg/103.0.1264.77');
  demo.headers := setHeader(demo, 'cookie: PHPSESSID=46a61998b923c125ad6aa77f8ee16563');
  demo.return := setReturn(demo, curl_exec);
  demo.return := setReturn(demo, curl_errno);
  demo.exec := actionRequest(demo);
  write(demo.exec.exec[0].value_return);
end.
