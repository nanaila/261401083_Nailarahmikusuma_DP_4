program KelulusanMahasiswa;
uses crt;
var
    nilai : array [1..5, 1..4] of real;    
    i, n, j : integer;                     //jumlah mahasiswa[1..5] dan jumlah nilai[1..4]
    rata : real;
    begin
        clrscr;
        write('Jumlah Mahasiswa: ');
        readln(n);
        while(n < 1 ) or (n > 5) do
            begin
            //input jumlah mahasiswa (1 - 5)
                write('Jumlah Mahasiswa: ');
                readln(n);
            end;

        //input nilai mahasiswa ke-i
        for i := 1 to n do
        begin
            writeln('Mahasiswa ke- ', i);
            for j := 1 to 4 do
            //input nilai berdasarkan jenis nilai (Tugas, Kuis, UTS, UAS)
            begin
                case j of
                    1 : write('Nilai Tugas: ');
                    2 : write('Nilai Kuis: ');
                    3 : write('Nilai UTS: ');
                    4 : write('Nilai UAS: ');
                end;
                readln(Nilai[i,j]);
            end;
        end;  

        for i := 1 to n do
        begin
        //hitung rata-rata nilai mahasiswa ke-i
            rata := (Nilai[i,1] + Nilai[i,2] + Nilai[i,3] + Nilai[i,4]) / 4;

        //tampilkan hasil nilai mahasiswa ke-i
            writeln('Mahasiswa ke-', i);
            writeln('Nilai Tugas: ', nilai[i,1]:0:2);
            writeln('Nilai Kuis : ', nilai[i,2]:0:2);
            writeln('Nilai UTS  : ', nilai[i,3]:0:2);
            writeln('Nilai UAS  : ', nilai[i,4]:0:2);
            writeln('Rata-rata  : ', rata:0:2);

        //tentukan hasil kelulusan mahasiswa ke-i
            if rata >= 70 then
                writeln('LULUS')
            else 
                writeln('TIDAK LULUS');
        end;
    end.
