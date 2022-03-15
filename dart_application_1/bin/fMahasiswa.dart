import 'fPerson.dart';

class Mahasiswa extends Person{
  String? _nrp;
  int _sks = 0;
  double _ipk = 0;
  double _ips = 0;
  String _status = "Aktif";

  Mahasiswa(String? nama, int? umur, String dtNrp, int dtSks, double dtIps, double dtIpk, String dtStatus) : super(nama, umur)
  {
    nrp = dtNrp;
    sks = dtSks;
    ipk = dtIpk;
    ips = dtIps;
    status = dtStatus;
  }

  //SETTER
  set nrp(String? nrp) {
    _nrp = nrp;
  }

  set sks(int sks) {
    _sks = sks;
  }

  set ips(double ips) {
    _ips = ips;
  }

  set ipk(double ipk) {
    _ipk = ipk;
  }

  set status(String status) {
    _status = status;
  }

  double hitungIps(double ipsawal, double ipsfinal) {
    double ipk = 0.0;
    if (ipsfinal != 0.0) {
      ipk += (ipsawal + ipsfinal) / 2;
    }
    return ipk;
  }

  String? get nrp => _nrp;
  int get sks => _sks;
  double get ipk => _ipk;
  double get ips => _ips;
  String get status => _status;

  
}