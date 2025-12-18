program sewahp;
uses crt, sysutils, dateutils;

type
Hp = record
  namahp : string;
  harga : longint;
  sewa : boolean;
end;

namahp=array[1..3] of Hp;

procedure sub_terimakasih;
begin
  clrscr;
  writeln('|-------------------------------------------------|');
  writeln('| TERIMA KASIH TELAH DATANG DI RENTAL HP MAS AMBA |');
  writeln('|-------------------------------------------------|');
  halt;
end;

procedure sub_samsung(listhp:namahp);
var
  i,kode : integer;
  bulan : integer;
  total : longint;
  lagi : char;
  f : text;
  nama : string;
begin
  repeat
    clrscr;
    writeln('=== Samsung ===');
    writeln('0. Kembali');
    for i := 1 to 3 do
    begin
      with listhp[i] do
      begin
        writeln(i, '. ', namahp, ' | Rp ', harga, '/bln');
        if sewa then
          writeln('   (Sudah Disewa)');
      end;
    end;

      write('Pilih kode: ');
      readln(kode);

      if kode = 0 then exit;
      if (kode < 1) or (kode > 3) then exit;
      with listhp[kode] do
      begin
        if sewa then
          begin
            write('Maaf, HP ini sudah disewa. Mau sewa hp lain? (Y/T) ');
            lagi := upcase(readkey);
            if lagi = 'Y' then 
              continue
            else
            begin
              sub_terimakasih;
            end
          end;
      end;

    repeat
      write('Sewa berapa bulan? ');
      readln(bulan);
    until bulan > 0;

    clrscr;
    with listhp[kode] do
    begin
      total := harga * bulan;
      sewa := true;

      write('Masukkan Nama Anda : ');
      readln(nama);

      clrscr;
      writeln('===BON SEWA HP===');
      writeln('Nama Penyewa: ', nama);
      writeln('Harga Sewa : Rp ', total);
      writeln('Merk HP    : Samsung');
      writeln('HP Dipilih : ', namahp);
      writeln('Lama Sewa  : ', bulan, ' bulan');
      writeln('Total Bayar: Rp ', total);
      writeln('Pinjam     : ', DateToStr(Date));
      writeln('Kembali    : ', DateToStr(IncMonth(Date, bulan)));
    end;

    assign(f, 'Bon Sewa HP.txt');
    if FileExists('Bon Sewa HP.txt') then
    append(f)
    else
    rewrite(f);
    with listhp[kode] do
      begin
        writeln(f, '---------- BON SEWA HP ----------');
        writeln(f, 'Nama Penyewa   : ', nama);
        writeln(f, 'Merk HP        : Samsung');
        writeln(f, 'Nama HP        : ', namahp);
        writeln(f, 'Lama Sewa      : ', bulan, ' bulan');
        writeln(f, 'Total Bayar    : Rp ', total);
        writeln(f, 'Tanggal Pinjam : ', DateToStr(Date));
        writeln(f, 'Tanggal Kembali: ', DateToStr(IncMonth(Date, bulan)));
        writeln(f, '---------------------------------');
      end;
    close(f);

    write('Mau Sewa lagi? (Y/T): ');
    repeat
      lagi := upcase(readkey);
    until (lagi = 'Y') or (lagi = 'T');
  until lagi = 'T' ;
    sub_terimakasih;
end;

procedure Sub_Iphone(listhp:namahp);
var
  i,kode : integer;
  bulan : integer;
  total : longint;
  lagi : char;
  f : text;
  nama : string;
begin
  repeat
    clrscr;
    writeln('=== Iphone ===');
    writeln('0. Kembali');
    for i := 1 to 3 do
    begin
      with listhp[i] do
      begin
        writeln(i, '. ', namahp, ' | Rp ', harga, '/bln');
        if sewa then
          writeln(' (Sudah Disewa)');
      end;
    end;

      write('Pilih kode: ');
      readln(kode);

      if kode = 0 then exit;
      if (kode < 1) or (kode > 3) then exit;
      with listhp[kode] do
      begin
        if sewa then
          begin
            write('Maaf, HP ini sudah disewa. Mau sewa hp lain? (Y/T) ');
            lagi := upcase(readkey);
            if lagi = 'Y' then 
              continue
            else
            begin
              sub_terimakasih;
            end
          end;
      end;

    repeat
      write('Sewa berapa bulan? ');
      readln(bulan);
    until bulan > 0;

    clrscr;
    with listhp[kode] do
    begin
      total := harga * bulan;
      sewa := true;

      write('Masukkan Nama Anda : ');
      readln(nama);

      clrscr;
      writeln('===BON SEWA HP===');
      writeln('Nama Penyewa: ', nama);
      writeln('Harga Sewa : Rp ', total);
      writeln('Merk HP    : Iphone');
      writeln('HP Dipilih : ', namahp);
      writeln('Lama Sewa  : ', bulan, ' bulan');
      writeln('Total Bayar: Rp ', total);
      writeln('Pinjam     : ', DateToStr(Date));
      writeln('Kembali    : ', DateToStr(IncMonth(Date, bulan)));
    end;

    assign(f, 'Bon Sewa HP.txt');
    if FileExists('Bon Sewa HP.txt') then
    append(f)
    else
    rewrite(f);
    with listhp[kode] do
      begin
        writeln(f, '---------- BON SEWA HP ----------');
        writeln(f, 'Nama Penyewa   : ', nama);
        writeln(f, 'Merk HP        : Iphone');
        writeln(f, 'Nama HP        : ', namahp);
        writeln(f, 'Lama Sewa      : ', bulan, ' bulan');
        writeln(f, 'Total Bayar    : Rp ', total);
        writeln(f, 'Tanggal Pinjam : ', DateToStr(Date));
        writeln(f, 'Tanggal Kembali: ', DateToStr(IncMonth(Date, bulan)));
        writeln(f, '---------------------------------');
      end;
    close(f);
    write('Mau Sewa lagi? (Y/T): ');
    
    repeat
      lagi := upcase(readkey);
    until (lagi = 'Y') or (lagi = 'T');
  until lagi = 'T' ;
    sub_terimakasih;
end;

var
  pilihan: integer;
  samsung,iphone:namahp;
begin
  textcolor(blue);

  with samsung[1] do begin namahp := 'Samsung Galaxy S21'; harga := 150000; sewa := false; end;
  with samsung[2] do begin namahp := 'Samsung Galaxy A52'; harga := 100000; sewa := false; end;
  with samsung[3] do begin namahp := 'Samsung Galaxy Note 20'; harga:=200000; sewa := false; end;

  with iphone[1] do begin namahp := 'Iphone 17 Pro'; harga := 150000; sewa := false; end;
  with iphone[2] do begin namahp:= 'Iphone 17 Pro Max'; harga := 250000; sewa := false; end;
  with iphone[3] do begin namahp:= 'Iphone 120 pro'; harga := 1000000; sewa := false; end;

    repeat
      clrscr;
      writeln('|=================================================|');
      writeln('|        SELAMAT DATANG DI RENTAL HP MAS AMBA     |');
      writeln('|=================================================|');
      writeln('|0. Keluar                                        |');
      writeln('|1. Samsung                                       |');
      writeln('|2. Iphone                                        |');
      writeln('|=================================================|');
      write('Pilih menu: ');
      readln(pilihan);
      case pilihan of
        0: sub_terimakasih;
        1: sub_samsung(samsung);
        2: sub_iphone(iphone);
      end;
    until false;
end.