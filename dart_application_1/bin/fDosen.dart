import 'fPegawai.dart';
import 'fmixin.dart';

class DosenLB extends Pegawai with Gaji_Sks{
  String? _jenisPegawai;
  int _sks = 0;
  DosenLB(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji, int dtSks) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    _jenisPegawai = jenisPegawai;
    _sks = sks;
  }
  get sks => _sks;
  get jenisPegawai => _jenisPegawai;

  
}

class Dosen_Tamu extends Pegawai with Gaji_Sks, Gaji_Tunjangan {
  String? _jenisPegawai;
  int _sks = 0;
  Dosen_Tamu(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji, int dtSks) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    _jenisPegawai = jenisPegawai;
    _sks = sks;
  }
  get sks => _sks;
  get jenisPegawai => _jenisPegawai;

}

class Dosen_Tetap extends Pegawai with Gaji_dasar, Gaji_Sks, Gaji_Tunjangan{
  String? _jenisPegawai;
  int _sks = 0;
  Dosen_Tetap(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji, int dtSks) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    _jenisPegawai = jenisPegawai;
    _sks = sks;
  }
  get sks => _sks;
  get jenisPegawai => _jenisPegawai;

}


