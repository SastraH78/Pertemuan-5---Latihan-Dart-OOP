import 'fPegawai.dart';
import 'fmixin.dart';

class Staff extends Pegawai with Gaji_dasar, Gaji_Tunjangan {
  int _cuti = 0;
  int co_absen = 0;
 
  Staff(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji, int dtCuti) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    cuti = dtCuti;
  }

  //GETTER
  int get cuti => this._cuti;

  //SETTER
  set cuti(int isiCuti) => this._cuti = isiCuti;

  void absen() {
    co_absen += 1;
    print("Absen Berhasil! $co_absen kali");
  }

  
}
