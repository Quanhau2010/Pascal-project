program mahoa;
uses crt, base64;
function caesar(text: string; shift: integer): string;
var i: integer;
begin
  for i := 1 to Length(text) do
    if text[i] in ['A'..'Z'] then
      text[i] := Chr(((Ord(text[i]) - Ord('A') + shift + 26) mod 26) + Ord('A'))
    else if text[i] in ['a'..'z'] then
      text[i] := Chr(((Ord(text[i]) - Ord('a') + shift + 26) mod 26) + Ord('a'));
  caesar := text;
end;
function xor_cipher(text: string; key: integer): string;
var i: integer;
begin
  for i := 1 to Length(text) do
    text[i] := Chr(Ord(text[i]) xor key);
  xor_cipher := text;
end;
function vinegere(text: string; key: string; decrypt: boolean): string;
var i, shift: integer;
begin
  for i := 1 to length(text) do
  begin
    if text[i] in ['A'..'Z'] then
      shift := Ord(UpCase(key[(i - 1) mod Length(key) + 1])) - Ord('A')
    else if text[i] in ['a'..'z'] then
      shift := Ord(LowerCase(key[(i - 1) mod Length(key) + 1])) - Ord('a')
    else
      continue;
    if decrypt then shift := -shift;
    if text[i] in ['A'..'Z'] then
      text[i] := Chr(((Ord(text[i]) - Ord('A') + shift + 26) mod 26) + Ord('A'))
    else if text[i] in ['a'..'z'] then
      text[i] := Chr(((Ord(text[i]) - Ord('a') + shift + 26) mod 26) + Ord('a'));
  end;
  vinegere := text;
end;
var s, key: string;
    n, c, method: integer;
begin
  clrscr;
  Writeln('Chon phuong phap ma hoa:');
  Writeln('1. Caesar Cipher');
  Writeln('2. XOR Cipher');
  Writeln('3. Vigenere');
  Writeln('4. Base64');
  Write('Chon: '); Readln(method);
  Writeln('1. Encode');
  Writeln('2. Decode');
  Write('Chon: '); Readln(c);
  Write('Nhap van ban: '); Readln(s);
  if method = 1 then
  begin
    Write('Nhap khoa (so): '); Readln(n);
    if c = 1 then
      Writeln('Ma hoa: ', caesar(s, n))
    else
      Writeln('Giai ma: ', caesar(s, -n));
  end
  else if method = 2 then
  begin
    Write('Nhap khoa (so): '); Readln(n);
    Writeln('Ket qua: ', xor_cipher(s, n));
  end
  else if method = 3 then
  begin
    Write('Nhap khoa (chuoi): '); Readln(key);
    if c = 1 then
      Writeln('Ma hoa: ', vinegere(s, key, false))
    else
      Writeln('Giai ma: ', vinegere(s, key, true));
  end
  else if method = 4 then
  begin
    if c = 1 then
      Writeln('Ma hoa: ', EncodeStringBase64(s))
    else
      Writeln('Giai ma: ', DecodeStringBase64(s));
  end;
  Readln;
end.
