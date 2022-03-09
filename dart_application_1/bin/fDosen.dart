import 'fPegawai.dart';
import 'fmixin.dart';

class DosenLB extends Pegawai with Gaji_Sks{
//gaji sks
}

class Dosen_Tamu extends Pegawai with Gaji_Sks, Gaji_Tunjangan {
//dapat gaji tunjangan, sks
}

class Dosen_Tetap extends Pegawai with Gaji_dasar, Gaji_Sks, Gaji_Tunjangan{
//dapat semua gaji
}


