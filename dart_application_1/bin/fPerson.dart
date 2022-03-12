import 'dart:io';

abstract class Person {
  String? _nama;
  int? _umur = 0;

  Person(this._nama, this._umur);

  //SETTER
  set nama(String? dtNama) {
    _nama = dtNama;
  }

  set umur(int? dtUmur) {
    _umur = dtUmur;
  }

  //GETTER
  String? get nama => _nama;
  int? get umur => _umur;



}
