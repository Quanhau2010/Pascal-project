program TimSoNguyenTo;

uses crt;

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

procedure FindAdjacentPrimes(arr: array of integer; n: integer);
var
    i: integer;
begin
    for i := 0 to n - 1 do
    begin
        if prime(arr[i]) then
        begin
            if i < n - 1 then
                writeln(arr[i + 1])  
            else
                writeln(arr[i - 1]); 
        end;
    end;
end;

var
    A: array[1..100] of integer;
    N, i: integer;
begin
    clrscr;
    write('Nhập số phần tử N: ');
    readln(N);
    writeln('Nhập ', N, ' số nguyên:');
    for i := 1 to N do
        read(A[i]);
    
    writeln('Các phần tử cần tìm:');
    FindAdjacentPrimes(A, N);
    readln;
end.
