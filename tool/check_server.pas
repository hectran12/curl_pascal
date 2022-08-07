program run;
uses crt, aHtml;
type
  port = record
          ip: String;
          port: string;
         end;
         
  Menu = record
          title: string;
          number: integer;
         end;
const
  menu: array[0..1] of Menu = (
   (title:'Config';number:1),
   (title:'View';number:2),
 );
  out: string = 'config.inp';
var
  server: port;
  a, b: integer;
  f: Text;
  y: String;

function checkhost (url: string): boolean;
var
  content: String;
begin
  url := 'http://' + url + '?server_on=on';
  content := getContentHtml(url);
  if length(content) > 2 then begin
    checkhost := True;
  end
  else begin
    checkhost := False;
  end;

end;
begin
  for a:= 0 to 1 do begin
    writeln('[',menu[a].number,']', menu[a].title);
  end; 
  write('Choice: ');
  readln(b);
  if b = 1 then begin
    write('Enter IP server: ');
    readln(server.ip);
  
    write('Enter PORT server: ');
    readln(server.port);  
    
    if length(server.ip) > 0 then begin
      if length(server.port) > 0 then begin
          assign(f, out);
          rewrite(f);
          y := (server.ip+':') + server.port;
          checkhost(y);
          if checkhost (y) = False then begin
            write('Server is not working');
            close(f);
          end
          else begin
            write(f,y);
            close(f);
            write('Done!');
          end;
          
      end
      else
        write('Port server invaild');
    end
    else
      write('Ip server invaild');
     
  end
  else if b = 2 then begin
    assign(f, out);
    reset(f);
    readln(f,y);
    close(f);
    writeln('Server is: ', y);
    if checkhost(y) = True then begin
      write('Status: On');
    end
    else
      write('Status: Off');
  end;
  
  
  readln;
end.
