program NilaUAS;
uses crt;
var
    nilai : array [1..10] of real;
    i, n, j : integer;
    temp : real;
    begin
        clrscr;
        write('jumlah mahasiswa: ');
        readln(n);
        while (n < 1) or (n > 10) do
        //input jumlah mahasiswa (1 - 10)
            begin
                write('jumlah mahasiswa: ');
                readln(n);
            end;

        for i := 1 to n do
        //masukkan nilai mahasiswa ke-i
        begin
            repeat
                write('Nilai Mahasiswa ke-',i,': ');
                readln(nilai[i]);
                if (nilai[i] < 0 ) or (nilai[i] > 100) then
                writeln('Nilai harus 0 - 100');
            until (nilai[i] >= 0) and (nilai[i] <= 100);
        end;

        for i := 1 to n - 1 do
        //mengurutkan nilai dari yang terkecil hingga terbesar
            for j := 1 to n - i do
            if nilai[j] > nilai[j + 1] then
            begin
                temp:= nilai[j];
                nilai[j] := nilai[j + 1];
                nilai[j + 1] := temp;
            end;
        writeln('Nilai UAS terendah hingga tertinggi');
        for i := 1 to n do
            writeln(i, '.', nilai[i]:0:2);
    end.
