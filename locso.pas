program TongSoChan;
uses crt;
var
  a: string;
  i, tong, so: integer;
begin
  clrscr;
  tong := 0;
  
  write('Nhap chuoi: ');
  readln(a);
  
  for i := 1 to length(a) do  
  if a[i] in ['0'..'9'] then  
  begin
    so := Ord(a[i]) - Ord('0'); 
    if so mod 2 = 0 then  
      tong := tong + so;  
  end;
  
  writeln('Tong cac so chan la: ', tong);
  readln;
end.
