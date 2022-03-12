import 'dart:io';
import 'fPegawai.dart';
import 'fMahasiswa.dart';

void main() {
  int input = 99;
  int input2 = 99;
  int input3 = 99;
  int gaji_tunjangan = 40000;
  int gaji_dosen_tetap;
  int gaji_dosen_lb;
  int gaji_staff;

  stdout.write("Gaji Awal Dosen Tetap : ");
  String? gaji_dt = stdin.readLineSync();
  gaji_dosen_tetap = int.parse(gaji_dt!);

  stdout.write("Gaji Awal Dosen LB : ");
  String? gaji_dlb = stdin.readLineSync();
  gaji_dosen_lb = int.parse(gaji_dlb!);

  stdout.write("Gaji Awal Staff : ");
  String? gaji_s = stdin.readLineSync();
  gaji_staff = int.parse(gaji_s!);

  print("");

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
        stdout.writeln("1. Ambil SKS (min 2, max 24)");
        stdout.writeln("2. Ubah Status");
        stdout.writeln("3. Lihat Jumlah SKS yang diambil");
        stdout.writeln("4. Masukkan nilai IPS");
        stdout.writeln("5. Lihat IPK");
        stdout.writeln("0. BACK");
        String? chc = stdin.readLineSync();
        input2 = int.parse(chc!); print("");

        if (input2 == 1) {
          print("hehe");
        }
        if (input2 == 2) {
          
        }
        if (input2 == 3) {

        }
        if (input2 == 4) {

        }
        if (input2 == 5) {

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
            stdout.writeln("1. Lihat Jumlah SKS");
            stdout.writeln("2. Lihat Penghasilan");
            stdout.writeln("0. BACK");
            stdout.write("=> ");
            String? chc = stdin.readLineSync();
            input3 = int.parse(chc!);
            print("");
            if (input3 == 1) {}
            if (input3 == 2) {}
          } while (input3 != 0);
        }
        if (input2 == 2) {
          do {
            stdout.writeln("Dosen Tamu");
            stdout.writeln("1. Lihat Jumlah SKS");
            stdout.writeln("2. Lihat Penghasilan");
            stdout.writeln("0. BACK");
            stdout.write("=> ");
            String? chc = stdin.readLineSync();
            input3 = int.parse(chc!);
            print("");
            if (input3 == 1) {}
            if (input3 == 2) {}
          } while (input3 != 0);
        }
        if (input2 == 3) {
          do {
            stdout.writeln("Dosen Tetap");
            stdout.writeln("1. Lihat Jumlah SKS");
            stdout.writeln("2. Lihat Penghasilan");
            stdout.writeln("0. BACK");
            stdout.write("=> ");
            String? chc = stdin.readLineSync();
            input3 = int.parse(chc!);
            print("");
            if (input3 == 1) {}
            if (input3 == 2) {}
          } while (input3 != 0);
        }
      } while (input2 != 0);
    } //akhir if 2

    if (input == 3) {
      do {
        stdout.writeln("Staff");
        stdout.writeln("1. Absen");
        stdout.writeln("2. Lihat Penghasilan");
        stdout.writeln("0. BACK");
        stdout.write("=> ");
        String? chc = stdin.readLineSync();
        input2 = int.parse(chc!); print("");
        if (input2 == 1) {}
        if (input2 == 2) {}

        
      } while (input2 != 0);
    }

    
    
  } while (input != 0); //AKHIR




}