    program sewa_hp;
    uses crt, sysutils, dateutils;

    procedure sub_terimakasih;
    begin
    clrscr;
    writeln('|--------------------------------------------------------|');
    writeln('|      TERIMA KASIH TELAH DATANG DI Rental HP Mas Amba   |');
    writeln('|              SEMOGA HARI KAMU MENYENANGKAN             |');
    writeln('|--------------------------------------------------------|');
    halt;
    end;

    procedure sub_samsung;
    label a;
    var 
    kode: string;
    lagi: char;
    bulan: integer;
    total: longint;
    begin
    a:
    clrscr;
        writeln('|-------------------------------------------------|');
        writeln('| Kode |      Pilihan Samsung Galaxy              |');
        writeln('|------|------------------------------------------|');
        writeln('|   0  |Kembali                                   |');
        writeln('|   1  |Samsung Galaxy S21     | Rp 150.000/1bln  |');
        writeln('|   2  |Samsung Galaxy A52     | Rp 100.000/1bln  |');
        writeln('|   3  |Samsung Galaxy Note 20 | Rp 200.000/1bln  |');
        writeln('|-------------------------------------------------|');
        write('Masukkan nomor Kode: ');
        readln(kode);
        case kode of
        '0': exit;
        '1': kode := 'Samsung Galaxy S21';
        '2': kode := 'Samsung Galaxy A52';
        '3': kode := 'Samsung Galaxy Note 20';
        else write('Kode yang anda cari tidak ada, mau coba lagi? ');
            lagi:=upcase(readkey);
            if upcase(lagi)='Y' then
            begin
                goto a;
            end
            else if upcase(lagi)='T' then
            begin
                sub_terimakasih;
            end
            else write('Silahkan Ketik Y/T untuk melanjutkan: ');
            lagi:=upcase(readkey);
            if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
            begin
            clrscr;
            writeln('Keliatan anak SD nya, Y sama T aja gak tau');
            halt;
            end
            end;
        repeat 
        write('Mau sewa berapa bulan? ');
        readln(bulan);
        if bulan <= 0 then
        begin
            writeln('Hanya boleh angka angka 1 ke atas!');
        end;
        until (bulan > 0);
            case kode of
            'Samsung Galaxy S21': total := 150000 * bulan;
            'Samsung Galaxy A52': total := 100000 * bulan;
            'Samsung Galaxy Note 20': total := 200000 * bulan;
            end;
        clrscr;
        writeln('Anda Memilih: ', kode);
        writeln('Lama Sewa: ', bulan, ' bulan');
        writeln('Total Harga Sewa: Rp ', total);
        writeln('Tanggal Peminjaman: ', DateToStr(Date));
        writeln('Tanggal Pengembalian: ', DateToStr(IncMonth(Date, bulan)));
        write('Apakah Data di atas sudah benar? ');
        lagi:=upcase(readkey);
        writeln;
        if upcase(lagi)='T' then
        begin
            goto a;
        end
        else if upcase(lagi)='Y' then
        begin
            write('Apakah Anda ingin menyewa lagi? ');
            lagi:=upcase(readkey);
            if upcase(lagi)='Y' then
            begin
                goto a;
            end
            else if upcase(lagi)='T' then
            begin
                sub_terimakasih;
            end
            else if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
                write('Silahkan tekan Y/T untuk melanjutkan: ');
                lagi:=upcase(readkey);
                if upcase(lagi)='Y'then
                begin
                    goto a;
                end
                else if upcase(lagi)='T' then
                begin
                    sub_terimakasih;
                end
                else if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
                begin
                    clrscr;
                    writeln('Keliatan anak SD nya, Y sama T aja gak tau');
                    halt;
                end
        end
    end;
    procedure sub_iphone;
    label a;
    var 
    kode: string;
    lagi: char;
    bulan: integer;
    total: longint;
    begin
    a:
    clrscr;
        writeln('|---------------------------------------------------|');
        writeln('| Kode |              Pilihan Iphone                |');
        writeln('|------|--------------------------------------------|');
        writeln('|   0  |Kembali                                     |');
        writeln('|   1  |Iphone 17 Pro          | Rp 150.000/1bln    |');
        writeln('|   2  |Iphone 17 Pro Max      | Rp 250.000/1bln    |');
        writeln('|   3  |Iphone 120 pro         | Rp 1.000.000/1bln  |');
        writeln('|---------------------------------------------------|');
        write('Masukkan nomor Kode: (1-3) ');
        readln(kode);
        case kode of
        '0': exit;
        '1': kode := 'Samsung Galaxy S21';
        '2': kode := 'Samsung Galaxy A52';
        '3': kode := 'Samsung Galaxy Note 20';
        else write('Kode yang anda cari tidak ada, mau coba lagi? (Y/T) ');
            lagi:=upcase(readkey);
            if upcase(lagi)='Y' then
            begin
                goto a;
            end
            else if upcase(lagi)='T' then
            begin
                sub_terimakasih;
            end
            else write('Silahkan Ketik Y/T untuk melanjutkan: ');
            lagi:=upcase(readkey);
            if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
            begin
            clrscr;
            writeln('Keliatan anak SD nya, Y sama T aja gak tau');
            halt;
            end
            end;
        repeat 
        write('Mau sewa berapa bulan? ');
        readln(bulan);
        if bulan <= 0 then
        begin
            writeln('Hanya boleh angka 1 ke atas!');
        end;
        until (bulan > 0);
            case kode of
            'Samsung Galaxy S21': total := 150000 * bulan;
            'Samsung Galaxy A52': total := 250000 * bulan;
            'Samsung Galaxy Note 20': total := 1000000 * bulan;
            end;
        clrscr;
        writeln('Anda Memilih: ', kode);
        writeln('Lama Sewa: ', bulan, ' bulan');
        writeln('Total Harga Sewa: Rp ', total);
        writeln('Tanggal Peminjaman: ', DateToStr(Date));
        writeln('Tanggal Pengembalian: ', DateToStr(IncMonth(Date, bulan)));
        write('Apakah Data di atas sudah benar? (Y/T) ');
        lagi:=upcase(readkey);
        writeln;
        if upcase(lagi)='T' then
        begin
            goto a;
        end
        else if upcase(lagi)='Y' then
        begin
            write('Apakah Anda ingin menyewa lagi? (Y/T) ');
            lagi:=upcase(readkey);
            writeln;
            if upcase(lagi)='Y' then
            begin
                goto a;
            end
            else if upcase(lagi)='T' then
            begin
                sub_terimakasih;
            end
            else if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
                write('Silahkan tekan Y/T untuk melanjutkan: ');
                lagi:=upcase(readkey);
                if upcase(lagi)='Y'then
                begin
                    goto a;
                end
                else if upcase(lagi)='T' then
                begin
                    sub_terimakasih;
                end
                else if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
                begin
                    clrscr;
                    writeln('Keliatan anak SD nya, Y sama T aja gak tau');
                    halt;
                end
            end;
        end;

    procedure sub_vivo;
    label a;
    var 
    kode: string;
    lagi: char;
    bulan: integer;
    total: longint;
    begin
    a:
    clrscr;
        writeln('|---------------------------------------------------|');
        writeln('| Kode |               Pilihan Vivo                 |');
        writeln('|------|--------------------------------------------|');
        writeln('|   0  |Kembali                                     |');
        writeln('|   1  |Vivo X70 Pro          | Rp 100.000/1bln     |');
        writeln('|   2  |Vivo X70 Pro Plus     | Rp 280.000/1bln     |');
        writeln('|   3  |Vivo Y33s             | Rp 300.000/1bln     |');
        writeln('|---------------------------------------------------|');
        write('Masukkan nomor Kode: (1-3) ');
        readln(kode);
        case kode of
        '0': exit;
        '1': kode := 'Samsung Galaxy S21';
        '2': kode := 'Samsung Galaxy A52';
        '3': kode := 'Samsung Galaxy Note 20';
        else write('Kode yang anda cari tidak ada, mau coba lagi? (Y/T) ');
            lagi:=upcase(readkey);
            if upcase(lagi)='Y' then
            begin
                goto a;
            end
            else if upcase(lagi)='T' then
            begin
                sub_terimakasih;
            end
            else write('Silahkan Ketik Y/T untuk melanjutkan: ');
            lagi:=upcase(readkey);
            if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
                begin
                    clrscr;
                    writeln('Keliatan anak SD nya, Y sama T aja gak tau');
                    halt;
                end
            end;
            repeat 
                write('Mau sewa berapa bulan? ');
                readln(bulan);
                if bulan <= 0 then
                begin
                    writeln('Hanya boleh angka angka 1 ke atas!');
                end;
            until (bulan > 0);
            case kode of
                'Vivo X70 Pro': total := 100000 * bulan;
                'Vivo X70 Pro Plus': total := 280000 * bulan;
                'Vivo Y33s': total := 300000 * bulan;
            end;
        clrscr;
        writeln('Anda Memilih: ', kode);
        writeln('Lama Sewa: ', bulan, ' bulan');
        writeln('Total Harga Sewa: Rp ', total);
        writeln('Tanggal Peminjaman: ', DateToStr(Date));
        writeln('Tanggal Pengembalian: ', DateToStr(IncMonth(Date, bulan)));
        write('Apakah Data di atas sudah benar? ');
        lagi:=upcase(readkey);
        writeln;
        if upcase(lagi)='T' then
        begin
            goto a;
        end
        else if upcase(lagi)='Y' then
        begin
            write('Apakah Anda ingin menyewa lagi? ');
            lagi:=upcase(readkey);
            writeln;
            if upcase(lagi)='Y' then
            begin
                goto a;
            end
            else if upcase(lagi)='T' then
            begin
                sub_terimakasih;
            end
            else if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
                write('Silahkan tekan Y/T untuk melanjutkan: ');
                lagi:=upcase(readkey);
                if upcase(lagi)='Y'then
                begin
                    goto a;
                end
                else if upcase(lagi)='T' then
                begin
                    sub_terimakasih;
                end
                else if (upcase(lagi) <> 'Y') and (upcase(lagi) <> 'T') then
                begin
                    clrscr;
                    writeln('Keliatan anak SD nya, Y sama T aja gak tau');
                    halt;
                end
        end
    end;

    label a;
    var
    pilihan: integer;
    lagi:char;
    begin
    while true do
    begin
    a:
    clrscr;
        textcolor(cyan);
        clrscr;
        writeln('|===============================================|');
        writeln('|      SELAMAT DATANG DI RENTAL HP MAS AMBA     |');
        writeln('|===============================================|');
        writeln('| Kode HP      |                                |');
        writeln('|==============|================================|');
        writeln('| 0. Keluar    |                                |');
        writeln('| 1. Samsung   |                                |');
        writeln('| 2. Iphone    |                                |');
        writeln('| 3. Vivo      |                                |');
        writeln('|===============================================|');
        write('Masukkan Kode HP: ');
        readln(pilihan);
        
        case pilihan of
            0: sub_terimakasih;
            1: sub_samsung;
            2: sub_iphone;
            3: sub_vivo;
        else
            writeln('Maaf, Kode yang anda cari tidak ada.');
            writeln('Mau Sewa HP? ');
            lagi:=upcase(readkey);
            if upcase(lagi)='Y' then
            begin
                goto a;
            end
            else if upcase(lagi)='T' then
            begin
                sub_terimakasih
            end
        end;
    end;
end.