function isPrime(n: integer): boolean;
var i: integer;
begin
  if (n < 2) or ((n > 2) and (n mod 2 = 0)) then exit(false);
  for i := 3 to trunc(sqrt(n)) do
    if (n mod i = 0) then exit(false);
  exit(true);
end;
