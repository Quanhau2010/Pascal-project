program timpas;
uses crt;
var
 i, n, a:integer;
 str:string;

begin
 write('nhap str: ');readln(str);
 for i := 1 to length(str) do
 begin
  if str[i] in ['1'..'9'] then
  begin
   val(str[i],n);
   if n mod 2 = 0 then
    a := a + n;
  end;
 end;
 writeln(a);
 readln
end.
