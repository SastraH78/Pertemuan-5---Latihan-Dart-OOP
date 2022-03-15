import 'fPegawai.dart';
import 'fmixin.dart';

class DosenLB extends Pegawai with Gaji_dasar, Gaji_Sks{
  int _sks = 0;
  DosenLB(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji, int dtSks) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    _sks = dtSks;
  }
  //GETTER
  int get sks => this._sks;

  //SETTER
  set sks(int isiSks) => this._sks = isiSks;
  
}

class Dosen_Tamu extends Pegawai with Gaji_Sks, Gaji_Tunjangan {
  int _sks = 0;
  Dosen_Tamu(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji, int dtSks) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    _sks = dtSks;
  }
  //GETTER
  int get sks => this._sks;

  //SETTER
  set sks(int isiSks) => this._sks = isiSks;

}

class Dosen_Tetap extends Pegawai with Gaji_dasar, Gaji_Sks, Gaji_Tunjangan{
  int _sks = 0;
  Dosen_Tetap(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji, int dtSks) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    _sks = dtSks;
  }
  //GETTER
  int get sks => this._sks;

  //SETTER
  set sks(int isiSks) => this._sks = isiSks;

}


