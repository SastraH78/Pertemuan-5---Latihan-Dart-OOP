import 'dart:io';
import 'fDosen.dart';
//import 'fPegawai.dart';
import 'fMahasiswa.dart';
import 'fstaff.dart';

void main() {
  int input = 99;
  int input2 = 99;
  int input3 = 99;
  //int gjTunjangan = 50000;
  int gaji_dasar;
  int gaji_tunjangan;
  int counter_absen = 0, counter_cuti = 0;
  int penghasilan;

  stdout.write("Input Gaji Dasar (untuk semua) : ");
  String? gaji_Dasar = stdin.readLineSync();
  gaji_dasar = int.parse(gaji_Dasar!);


  stdout.write("Input Gaji Tunjangan (untuk semua) : ");
  String? gaji_Tunjangan = stdin.readLineSync();
  gaji_tunjangan = int.parse(gaji_Tunjangan!);
  if (gaji_tunjangan > 0) {
    
  }
  else
  {
    print("Tunjangan yang dimasukkan tidak boleh bernilai negatif");
    print("");
    stdout.write("Input Gaji Tunjangan (untuk semua) : ");
    String? gaji_Tunjangan = stdin.readLineSync();
    gaji_tunjangan = int.parse(gaji_Tunjangan!);
  }



  print("");

  Mahasiswa mh1 = Mahasiswa("Verrel", 20, "C12345678", 0, 0.0, 0.0, "Aktif");
  DosenLB dlb = DosenLB("Rafa", 30, "DLB2345634", "Dosen LB", 0, 10);
  Dosen_Tamu dtm = Dosen_Tamu("Jemes", 26, "DT99876", "Dosen Tamu", 0, 6);
  Dosen_Tetap dttp = Dosen_Tetap("Marno", 35, "D298446", "Dosen Tetap", 0, 15);
  Staff sf = Staff("Joni", 35, "S669987", "Staff", 0, 12);

  do {
    stdout.writeln("MENU");
    stdout.writeln("1. Mahasiswa");
    stdout.writeln("2. Dosen");
    stdout.writeln("3. Staff");
    stdout.writeln("0. Exit");
    stdout.write("=> ");
    String? chc = stdin.readLineSync();
    input = int.parse(chc!); print("");

    if (input == 1) {
      do {
        stdout.writeln("Mahasiswa");
        stdout.writeln('Nama: ${mh1.nama} | Umur: ${mh1.umur} | NRP: ${mh1.nrp} | SKS: ${mh1.sks} | IPS: ${mh1.ips} | IPK: ${mh1.ipk} | Status: ${mh1.status}');
        stdout.writeln("1. Ambil SKS (min 2, max 24)");
        stdout.writeln("2. Ubah Status");
        stdout.writeln("3. Lihat Jumlah SKS yang diambil");
        stdout.writeln("4. Masukkan nilai IPS");
        stdout.writeln("5. Lihat IPK");
        stdout.writeln("0. BACK");
        String? chc = stdin.readLineSync();
        input2 = int.parse(chc!); print("");

        if (input2 == 1) {
          int ambilSks, tempSks;
          stdout.write("Jumlah SKS yang ingin diambil: ");
          String? ambil = stdin.readLineSync();
          ambilSks = int.parse(ambil!);
          if (mh1.sks != 0) {
            if (ambilSks < 2 || ambilSks > 24) {
              print("SKS yang diambil MINIMAL 2 dan MAXIMAL 24");
              print("");
            } else {
              tempSks = mh1.sks;
              mh1.sks = ambilSks + tempSks;
              print("");
            }
          }
          else
          {
            if (ambilSks < 2 || ambilSks > 24) {
              print("SKS yang diambil MINIMAL 2 dan MAXIMAL 24");
              print("");
            } else {
              mh1.sks = ambilSks;
              print("");
            }
          }

        }
        if (input2 == 2) {
          do {
            stdout.writeln("Status Saat ini: ${mh1.status}");
            stdout.writeln("1. Aktif");
            stdout.writeln("2. Cuti");
            stdout.writeln("0. BACK");
            stdout.write("=> ");
            String? chc = stdin.readLineSync();
            input3 = int.parse(chc!);
            print("");

            if (input3 == 1) {
              mh1.status = "Aktif";
              print("");
            }
            if (input3 == 2) {
              mh1.status = "Cuti";
              print("");
            }

          } while (input3 != 0);
        }
        if (input2 == 3) {
          stdout.writeln("Jumlah SKS Saat ini: ${mh1.sks}");
          print("");
        }
        if (input2 == 4) {
          double nilaiIps;
          stdout.writeln("Masukkan nilai IPS: ");
          String? ambil = stdin.readLineSync();
          nilaiIps = double.parse(ambil!);
          mh1.hitungIps(mh1.ips, nilaiIps);
          mh1.ips = nilaiIps;
          print("");
        }
        if (input2 == 5) {
          stdout.writeln("IPK saat ini: ${mh1.ipk}");
          print("");
        }

      } while (input2 != 0);
    }//akhir if 1

    if (input == 2) {
      do {
        stdout.writeln("Dosen");
        stdout.writeln("1. Dosen LB");
        stdout.writeln("2. Dosen Tamu");
        stdout.writeln("3. Dosen Tetap");
        stdout.writeln("0. BACK");
        stdout.write("=> ");
        String? chc = stdin.readLineSync();
        input2 = int.parse(chc!);
        print("");

        if (input2 == 1) {
          do {
            stdout.writeln("Dosen LB");
            stdout.writeln('Nama: ${dlb.nama} | Umur: ${dlb.umur} | NIP: ${dlb.nip} | Jabatan: ${dlb.jenisPegawai} | SKS: ${dlb.sks}');
            stdout.writeln("1. Lihat Jumlah SKS");
            stdout.writeln("2. Lihat Penghasilan");
            stdout.writeln("0. BACK");
            stdout.write("=> ");
            String? chc = stdin.readLineSync();
            input3 = int.parse(chc!);
            print("");
            if (input3 == 1) {
              stdout.writeln('jumlah SKS saat ini: ${dlb.sks}');
              print("");
            }
            if (input3 == 2) {
              penghasilan = dlb.gaji_sks(dlb.sks);
              penghasilan += gaji_dasar;
              dlb.gaji = penghasilan;
              stdout.writeln("Penghasilan: ${dlb.gaji}");
              print("");
            }
          } while (input3 != 0);
        }
        if (input2 == 2) {
          do {
            stdout.writeln("Dosen Tamu");
            stdout.writeln('Nama: ${dtm.nama} | Umur: ${dtm.umur} | NIP: ${dtm.nip} | Jabatan: ${dtm.jenisPegawai} | SKS: ${dtm.sks}');
            stdout.writeln("1. Lihat Jumlah SKS");
            stdout.writeln("2. Lihat Penghasilan");
            stdout.writeln("0. BACK");
            stdout.write("=> ");
            String? chc = stdin.readLineSync();
            input3 = int.parse(chc!);
            print("");
            if (input3 == 1) {
              stdout.writeln('jumlah SKS saat ini: ${dtm.sks}');
              print("");
            }
            if (input3 == 2) {
              penghasilan = dtm.gaji_sks(dtm.sks);
              penghasilan += dtm.gaji_tunjagan(gaji_tunjangan);
              dtm.gaji = penghasilan;
              stdout.writeln("Penghasilan: ${dtm.gaji}");
              print("");
            }
          } while (input3 != 0);
        }
        if (input2 == 3) {
          do {
            stdout.writeln("Dosen Tetap");
            stdout.writeln('Nama: ${dttp.nama} | Umur: ${dttp.umur} | NIP: ${dttp.nip} | Jabatan: ${dttp.jenisPegawai} | SKS: ${dttp.sks}');
            stdout.writeln("1. Lihat Jumlah SKS");
            stdout.writeln("2. Lihat Penghasilan");
            stdout.writeln("0. BACK");
            stdout.write("=> ");
            String? chc = stdin.readLineSync();
            input3 = int.parse(chc!);
            print("");
            if (input3 == 1) {
              stdout.writeln('jumlah SKS saat ini: ${dttp.sks}');
              print("");
            }
            if (input3 == 2) {
              penghasilan = dttp.gaji_sks(dttp.sks);
              penghasilan += gaji_dasar;
              penghasilan += dttp.gaji_tunjagan(gaji_tunjangan);
              dttp.gaji = penghasilan;
              stdout.writeln("Penghasilan: ${dttp.gaji}");
              print("");
            }
          } while (input3 != 0);
        }
      } while (input2 != 0);
    } //akhir if 2

    if (input == 3) {
      do {
        stdout.writeln("Staff");
        stdout.writeln('Nama: ${sf.nama} | Umur: ${sf.umur} | NIP: ${sf.nip} | Jabatan: ${sf.jenisPegawai} | Jumlah Cuti: ${sf.cuti}');
        stdout.writeln("1. Absen");
        stdout.writeln("2. Lihat Penghasilan");
        stdout.writeln("3. Ambil Cuti");
        stdout.writeln("0. BACK");
        stdout.write("=> ");
        String? chc = stdin.readLineSync();
        input2 = int.parse(chc!); print("");
        if (input2 == 1) {
          stdout.writeln("(NOTE: Setiap absen nx + gaji tunjangan nx)");
          sf.absen();
          counter_absen += 1;
        }
        if (input2 == 2) {
          if(counter_absen != 0)
          {
            penghasilan = gaji_dasar;
            penghasilan += sf.gaji_tunjagan(gaji_tunjangan * counter_absen);
            sf.gaji = penghasilan;
          }
          else
          {
            penghasilan = gaji_dasar;
            sf.gaji = penghasilan;
          }
          stdout.writeln("Penghasilan: ${sf.gaji}");
          print("");
          
        }
        if (input2 == 3) {
          if (sf.cuti != 0) {
            int ambilCuti, totalCuti;
            //stdout.writeln("NOTE: (Bila ambil cuti => (akan mengurangi tunjangan sebanyak jumlah cuti) )");
            stdout.write("Jumlah Cuti yang ingin diambil (max 12): ");
            String? ambil = stdin.readLineSync();
            ambilCuti = int.parse(ambil!);
            //totalCuti = (gaji_tunjangan * ambilCuti);
            sf.cuti -= ambilCuti;
            stdout.writeln("Sisa jumlah Cuti : ${sf.cuti}");
            print("");
          }
          else {
            stdout.writeln("Jumlah Cuti habis");
            print("");
          }
        }

      } while (input2 != 0);
    }

  } while (input != 0); //AKHIR

}