import 'fPerson.dart';

class Mahasiswa extends Person{
  String? _nrp;
  int _sks = 0;
  int _ipk = 0;
  String _status = "Aktif";

  Mahasiswa(String? nama, int? umur, String dtNrp, int dtSks, int dtIpk, String dtStatus) : super(nama, umur)
  {
    nrp = dtNrp;
    sks = dtSks;
    ipk = dtIpk;
    status = dtStatus;
  }

  //SETTER
  set nrp(String? nrp) {
    _nrp = nrp;
  }

  set sks(int sks) {
    _sks = sks;
  }

  set ipk(int ipk) {
    _ipk = ipk;
  }

  set status(String status) {
    _status = status;
  }

  String? get nrp => _nrp;
  int get sks => _sks;
  int get ipk => _ipk;
  String get status => _status;

  
}