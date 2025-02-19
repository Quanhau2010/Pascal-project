function prime(a: integer): boolean;
var
  i: integer;
begin
  if a < 2 then
    prime := false
  else if a = 2 then
    prime := true
  else if a mod 2 = 0 then
    prime := false
  else
  begin
    for i := 3 to trunc(sqrt(a)) do
    begin
      if a mod i = 0 then
      begin
        prime := false;
        exit;
      end;
    end;
    prime := true;
  end;
end;
