import 'fPerson.dart';

class Pegawai extends Person {
  String? _nip;
  String? _jenisPegawai;
  int _gaji = 0;

  Pegawai(String? nama, int? umur, String dtNip, String dtJenisPegawai, int dtGaji) : super(nama, umur)
  {
    nip = dtNip;
    jenisPegawai = dtJenisPegawai;
    gaji = dtGaji;
  }

  //SETTER
  set nip(String? nip) {
    _nip = nip;
  }

  set jenisPegawai(String? jenisPegawai) {
    _jenisPegawai = jenisPegawai;
  }

  set gaji(int gaji) {
    _gaji = gaji;
  }

  //GETTER
  String? get nip => _nip;
  String? get jenisPegawai => _jenisPegawai;
  int get gaji => _gaji;
  


  
}
