import 'dart:io';

// Class Mobil untuk menyimpan informasi mobil
class Mobil {
  String merk;
  String model;
  int tahun;

  // Constructor untuk inisialisasi properti
  Mobil(this.merk, this.model, this.tahun);

  // Method untuk menampilkan informasi mobil
  void tampilkanInfo() {
    print('Informasi Mobil:');
    print('Merk: $merk');
    print('Model: $model');
    print('Tahun: $tahun');
  }
}

void main() {
  // Meminta input dari user
  print('Masukkan merk mobil:');
  String merkMobil = stdin.readLineSync()!;

  print('Masukkan model mobil:');
  String modelMobil = stdin.readLineSync()!;

  print('Masukkan tahun mobil:');
  int tahunMobil = int.parse(stdin.readLineSync()!);

  // Membuat objek mobil baru dari input user
  var mobilSaya = Mobil(merkMobil, modelMobil, tahunMobil);

  // Menampilkan informasi mobil
  mobilSaya.tampilkanInfo();
}
