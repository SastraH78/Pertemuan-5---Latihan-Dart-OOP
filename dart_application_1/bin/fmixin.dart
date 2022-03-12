import 'dart:html';

mixin Gaji_dasar {
  int gaji_dasar(int gjDasar) {
    return gjDasar;
  }
}

mixin Gaji_Sks {
  int gaji_sks(int gjSks) {
    return gjSks * 40000;
  }
}

mixin Gaji_Tunjangan {
  int gaji_tunjagan(int gjTunjangan) {
    return gjTunjangan;
  }
}