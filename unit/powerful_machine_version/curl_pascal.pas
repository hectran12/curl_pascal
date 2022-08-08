unit curl_pascal;
interface
  uses crt, sysutils, aHtml;
  type
      methods = (GET, POST, OPTIONS);
      curl_return = (curl_close,curl_copy_handle,curl_errno,curl_escape,curl_exec,
        curl_file_create,curl_getinfo,curl_init,curl_multi_add_handle,
        curl_multi_close,curl_multi_exec,curl_multi_getcontent,curl_multi_info_read,
        curl_multi_init,curl_multi_remove_handle,curl_multi_select,curl_multi_setopt,
        curl_multi_strerror,curl_pause,curl_reset,curl_setopt,curl_setopt_array,curl_share_close,
        curl_share_init,curl_share_setopt,curl_strerror,curl_unescape,curl_version);
      curl_prot = (CURLOPT_AUTOREFERER,CURLOPT_BINARYTRANSFER,CURLOPT_BUFFERSIZE,
        CURLOPT_CAINFO,CURLOPT_CAPATH,CURLOPT_CLOSEPOLICY,CURLOPT_CONNECTTIMEOUT,
        CURLOPT_COOKIE,CURLOPT_COOKIEFILE,CURLOPT_COOKIEJAR,CURLOPT_COOKIESESSION,CURLOPT_CRLF,
        CURLOPT_CUSTOMREQUEST,CURLOPT_DNS_CACHE_TIMEOUT,CURLOPT_DNS_USE_GLOBAL_CACHE,
        CURLOPT_EGDSOCKET,CURLOPT_ENCODING,CURLOPT_FAILONERROR,CURLOPT_FILE,CURLOPT_FILETIME,
        CURLOPT_FOLLOWLOCATION,CURLOPT_FORBID_REUSE,CURLOPT_FRESH_CONNECT,CURLOPT_FTP_USE_EPRT,
        CURLOPT_FTP_USE_EPSV,CURLOPT_HEADER,CURLOPT_HEADERFUNCTION,CURLOPT_HTTP200ALIASES,CURLOPT_HTTPGET,
        CURLOPT_HTTPHEADER,CURLOPT_HTTPPROXYTUNNEL,CURLOPT_HTTP_VERSION,CURLOPT_INFILE,CURLOPT_INFILESIZE,
        CURLOPT_INTERFACE,CURLOPT_IPRESOLVE,CURLOPT_KEEP_CONNECTION,CURLOPT_LOW_SPEED_LIMIT,CURLOPT_LOW_SPEED_TIME,
        CURLOPT_MAXCONNECTS,CURLOPT_MAXREDIRS,CURLOPT_MUTE,CURLOPT_NETRC,CURLOPT_NOBODY,CURLOPT_NOPROGRESS,CURLOPT_NOSIGNAL,
        CURLOPT_PASSWDFUNCTION,CURLOPT_POST,CURLOPT_POSTFIELDS,CURLOPT_POSTQUOTE,CURLOPT_PRIVATE,
        CURLOPT_PROGRESSFUNCTION,CURLOPT_PROXY,CURLOPT_PROXYPORT,CURLOPT_PROXYTYPE,CURLOPT_PROXYUSERPWD,
        CURLOPT_PUT,CURLOPT_QUOTE,CURLOPT_RANDOM_FILE,CURLOPT_RANGE,CURLOPT_READDATA,CURLOPT_READFUNCTION,
        CURLOPT_REFERER,CURLOPT_RESUME_FROM,CURLOPT_RETURNTRANSFER,CURLOPT_SHARE,CURLOPT_SSLCERT,CURLOPT_SSLCERTPASSWD,
        CURLOPT_SSLCERTTYPE,CURLOPT_SSLENGINE,CURLOPT_SSLENGINE_DEFAULT,CURLOPT_SSLKEY,CURLOPT_SSLKEYPASSWD,
        CURLOPT_SSLKEYTYPE,CURLOPT_SSLVERSION,CURLOPT_SSL_CIPHER_LIST,CURLOPT_SSL_VERIFYHOST,
        CURLOPT_SSL_VERIFYPEER,CURLOPT_STDERR,CURLOPT_TIMECONDITION,CURLOPT_TIMEOUT,CURLOPT_TIMEVALUE,
        CURLOPT_TRANSFERTEXT,CURLOPT_UNRESTRICTED_AUTH,CURLOPT_UPLOAD,CURLOPT_URL,CURLOPT_USERAGENT,
        CURLOPT_USERPWD,CURLOPT_VERBOSE,CURLOPT_WRITEFUNCTION,CURLOPT_WRITEHEADER,CURLOPT_HTTP_VERSION);
      
      
      exec_result = record
              name_return: String;
              value_return: String;
            end;
      exection = record
              content: string;
              pson: string;
              exec: array[0..1000] of exec_result;
              len: integer;
              end;
      curl = record
              url: String;
              properties: String;
              return: String;
              headers: String;
              method: methods;
              HOST: String;
              PORT: Integer;
              exec: exection;
            end;
      tArray = record
                list: array[0..100] of string;
                len: integer;
            end;
  function curl_new(uri: String; HOST: String; PORT: Integer; METHOD: methods): curl;
  function setProperties(self: curl; curlprot: curl_prot; curlvalue: String): string;
  function setReturn(self: curl; curlreturn: curl_return): string;
  function actionRequest(self: curl): exection;
  function split(texts:String; chars:String): tArray;
  function setHeader(self: curl; hd: String): string;
  function encry(texts: string; types: string): string;
implementation
  (*Init curl*)
  function curl_new(uri: String; HOST: String; PORT: Integer; METHOD: methods): curl;
  var newCurl: curl;
  begin
      newCurl.url := uri;
      newCurl.method := method;
      newCurl.HOST := HOST;
      newCurl.PORT := PORT;
      curl_new := newCurl;
  end;
  (*Peoperties curl*)
  function setProperties(self: curl; curlprot: curl_prot; curlvalue: String): string;
  begin
    self.properties := self.properties + (curlprot+'') +'-hex3336-'+ curlvalue + '-hex3335-';
    setProperties := self.properties;
  end;
  (*Set return*)
  function setReturn(self: curl; curlreturn: curl_return): string;
  begin
    self.return := self.return + (curlreturn+'') + '-hex3336-self-hex3335-';
    setReturn := self.return;
  end;
  (*set headers*)
  function setHeader(self: curl; hd: String): string;
  begin
    self.headers := self.headers + (hd + '-hex3335-');
    setHeader := self.headers;
  end;
  function encry(texts: string; types: string): string;
  type
     item = record
              name : string;
              value: string;
            end;
  const 
      items : array[0..91] of item = (
        (name:'a'; value:'Vkb'), (name:'b'; value:'Qhp'),
        (name:'c'; value:'Uqc'), (name:'d'; value:'Azq'),
        (name:'e'; value:'Ggj'), (name:'f'; value:'Uvj'),
        (name:'g'; value:'Pam'), (name:'h'; value:'Nal'),
        (name:'i'; value:'Gui'), (name:'j'; value:'Odk'),
        (name:'k'; value:'Hsf'), (name:'l'; value:'Ffh'),
        (name:'m'; value:'Grl'), (name:'n'; value:'Mqg'),
        (name:'o'; value:'Nwa'), (name:'p'; value:'Wut'),
        (name:'q'; value:'Uwf'), (name:'r'; value:'Wrf'),
        (name:'s'; value:'Lxm'), (name:'t'; value:'Fkh'),
        (name:'u'; value:'Awt'), (name:'v'; value:'Jwa'),
        (name:'w'; value:'Vqg'), (name:'x'; value:'Nin'),
        (name:'y'; value:'Fae'), (name:'z'; value:'Tdr'),
        (name:'A'; value:'Yyn'),
        (name:'B'; value:'Cir'),
        (name:'C'; value:'Ipl'),
        (name:'D'; value:'Rqy'),
        (name:'E'; value:'Bfb'),
        (name:'F'; value:'Eck'),
        (name:'G'; value:'Bmm'),
        (name:'H'; value:'Ece'),
                                (name:'I'; value:'Mue'),
                                (name:'J'; value:'Tqg'),
(name:'K'; value:'Tfh'),
(name:'L'; value:'Jgi'),
(name:'M'; value:'Wdk'),
(name:'N'; value:'Vfi'),
(name:'O'; value:'Ubd'),
(name:'P'; value:'Kfq'),
(name:'Q'; value:'Gqu'),
(name:'R'; value:'Wyd'),
(name:'S'; value:'Trn'),
(name:'T'; value:'Pvh'),
(name:'U'; value:'Esw'),
(name:'V'; value:'Wke'),
(name:'W'; value:'Nen'),
(name:'X'; value:'Ioe'),
(name:'Y'; value:'Nmn'),
(name:'Z'; value:'Zlr'),
(name:'0'; value:'Pwc'),
(name:'1'; value:'Ush'),
(name:'2'; value:'Kuc'),
(name:'3'; value:'Hlx'),
(name:'4'; value:'Kot'),
(name:'5'; value:'Hut'),
(name:'6'; value:'Gqk'),
(name:'7'; value:'Kee'),
(name:'8'; value:'Agy'),
(name:'9'; value:'Hbk'),
(name:'\'; value:'Jps'),
(name:'/'; value:'Adz'),
(name:';'; value:'Fvn'),
(name:'"'; value:'Pzf'),
(name:'*'; value:'Kst'),
(name:'&'; value:'Ocw'),
(name:'^'; value:'Sdb'),
(name:'%'; value:'Kmb'),
(name:'$'; value:'Yhh'),
(name:'#'; value:'Teg'),
(name:'@'; value:'Xee'),
(name:'!'; value:'Yet'),
(name:'+'; value:'Lhk'),
(name:'-'; value:'Fzy'),
(name:'_'; value:'Hwi'),
(name:','; value:'Zrs'),
(name:'>'; value:'Cby'),
(name:'<'; value:'Apw'),
(name:'?'; value:'Xka'),
(name:'`'; value:'Hih'),
(name:'['; value:'Ptm'),
(name:']'; value:'Emq'),
(name:'.'; value:'Swq'),
(name:'='; value:'Kju'),
(name:' '; value:'Lkh'),
(name:':'; value:'Awv'),
(name:'('; value:'Rrv'),
(name:')'; value:'Qse'),
(name:'~'; value:'Tru'),
(name:'|'; value:'Tra'));  
  var i, z, k: integer;
    result: string;
    keys: string;
    temp: string;   
    check: boolean;     
  begin
    
    if types = 'encode' then begin
      result := '';
      
      for i:=1 to length(texts) do begin
        check := false;
        for z:=0 to 91 do begin
          if (items[z].name = texts[i]) then begin
              result := result + items[z].value;
              check := true;
              break;
          end;
        end;
        if check = false then begin
          result := result + 'Lkh';
        end
      end;
    end
    else if types = 'decode' then begin
      keys := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      temp := '';
      result := '';
      (*Lap ki tu*)
      z := 0;
      for i:=1 to length(texts) do begin
        z := z + 1;
        temp := temp + texts[i];
        if z = 3 then begin
          check := false;
          for k:=0 to 91 do begin
            if items[k].value = temp then begin
              result := result + items[k].name;
              check := true;
            end;
          end;
          z := 0;
          temp := '';
          if check = false then begin
            result := result + 'Lkh';
          end;
        end;
      end;
      
    end
    else begin
      z:=0;
      for z:=0 to 91 do begin
        writeln(items[z].name,'=>',items[z].value);
      end;
    end;
    encry := result;
  end;
  function split(texts:String; chars:String): tArray;
var
    lengt, a, b:integer;
    str1, str2, str3: string;
    temp: tArray;
    temp2: tArray;
begin
    lengt := length(texts);
    temp.len := 0;
    str2 := '';
    str3 := '';
    for a:=1 to lengt do begin
        str2 := str2 + texts[a];
        if texts[a] = chars then begin
            for b := 1 to length(str2)-1 do begin
                str3 := str3 + str2[b];
            end;
            temp.list[temp.len] := str3;
            str2 := '';
            str3 := '';
            temp.len := temp.len + 1;
        end;

    end;
    temp.len := temp.len + 1;
    temp.list[temp.len] := str2;
    temp2.len := 0;
    for a:=0 to temp.len do begin
        if temp.list[a] <> '' then begin
            if temp.list[a] <> ' ' then begin
              temp2.len := a;
              temp2.list[a] := temp.list[a];
            end;
        end;
    end;
    split := temp2;
end;
  (*Action request*)
  function actionRequest(self: curl): exection;
  var url: string;
      result_split : string;
      arr, arr2: tArray;
      exect: exection;
      sp1, sp2, sp3, result: string;
      num1, num2, num3: integer;
  begin
    url := 'http://' + self.HOST + ':' + self.PORT + '?server=on';
    result_split := encry(self.url+'','encode');
    url := url + '&url=' + result_split;
    result_split := encry(self.method+'', 'encode');
    url := url + '&method=' + result_split;
    result_split := encry(self.properties+'', 'encode');
    url := url + '&prot=' + result_split;
    result_split := encry(self.return+'', 'encode');
    url := url + '&return=' + result_split;
    result_split := encry(self.headers+'','encode');
    url := url + '&headers=' + result_split;
    result_split := getContentHtml(url);
    
    if result_split = '' then begin
      exect.content := 'Cannot request';
      exect.pson := 'base69';
      exect.len := 0;
    end
    else begin
       exect.content := result_split;
       exect.pson := 'base69';
       arr := split(result_split,',');
       exect.len := arr.len;
       num2 := 0;
       for num1:=0 to arr.len do begin
         if arr.list[num1] <> '' then begin
           arr2 := split(arr.list[num1], '|');
           exect.exec[num2].name_return := arr2.list[0];
           if arr2.list[2] = 'Lkh' then begin
             exect.exec[num2].value_return := '0';
           end
           else begin
             exect.exec[num2].value_return := encry(arr2.list[2],'decode');
           end;
           num2 := num2 + 1;
         end;
       end;
       
    end;
    
    actionRequest := exect;
    
    
  
    
  end;
  
  (*en/de*)
  
  
  (*Split string*)
  
initialization
begin
  
end;
finalization
begin
  
end;
end.
