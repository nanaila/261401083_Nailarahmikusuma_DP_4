program DeretBilangan;
uses crt;
var
    n, i: integer;

// fungsi untuk menghasilkan deret a (fibonacci)
function DeretA(x: integer): integer;
var
    a, b, c, j: integer;
begin
    a := 1;
    b := 1;

    {jika urutan pertama atau kedua nilainya adalah 1}
    if x = 1 then
    DeretA := a
    else if x = 2 then
    DeretA := b
    else
    begin
    {perulangan untuk menghitung deret a}
    for j := 3 to x do
    begin
        c := a + b;
        a := b;
        b := c;
    end;
    DeretA := b;
    end;
end;

// fungsi untuk menghasilkan deret b (perpangkatan 2)
function DeretB(x: integer): integer;
var
    j, hasil: integer;
begin
    hasil := 1;

    {perulangan untuk menghitung deret b}
    for j := 1 to x - 1 do
    hasil := hasil * 2;

    DeretB := hasil;
end;

//fungsi untuk menghasilkan deret c (kuadrat)
function DeretC(x: integer): integer;
begin
  DeretC := x * x;
end;

// fungsi untuk menghasilkan deret d
function DeretD(x: integer): integer;
begin
  DeretD := x * (x + 1);
end;

begin
    clrscr;

// menginput jumlah angka yang ingin ditampilkan
    write('Masukkan jumlah deret: ');
    readln(n);

//menampilkan deret a
    writeln('Deret a: ');
    for i := 1 to n do
    write(DeretA(i), ' ');

// menampilkan deret b
    writeln;
    writeln('Deret b: ');
    for i := 1 to n do
    write(DeretB(i), ' ');

// menampilkan deret c
    writeln;
    writeln('Deret c: ');
    for i := 1 to n do
    write(DeretC(i), ' ');

// menampilkan deret d 
    writeln;
    writeln('Deret d: ');
    for i := 1 to n do
    write(DeretD(i), ' ');
    readln;
end.
