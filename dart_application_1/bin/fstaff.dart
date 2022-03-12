import 'fPegawai.dart';
import 'fmixin.dart';

class Staff extends Pegawai with Gaji_dasar, Gaji_Tunjangan {
  String? _jenisPegawai;
  Staff(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji) : super(nama, umur, dtNip, dtJenisPegawai, dtGaji)
  {
    jenisPegawai = dtJenisPegawai;
  }

  get jenisPegawai => _jenisPegawai;
  
}