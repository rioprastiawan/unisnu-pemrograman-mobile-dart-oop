import 'dart:io';

// Class Warna dengan constant constructor
class Warna {
  final int merah;
  final int hijau;
  final int biru;

  // Constant constructor
  const Warna(this.merah, this.hijau, this.biru);

  // Method untuk menampilkan informasi warna
  void tampilkanInfo() {
    print('Nilai RGB: ($merah, $hijau, $biru)');
  }
}

void main() {
  // Input nilai warna dari user
  print('Masukkan nilai warna pertama:');
  print('Nilai merah (0-255):');
  int merah1 = int.parse(stdin.readLineSync()!);

  print('Nilai hijau (0-255):');
  int hijau1 = int.parse(stdin.readLineSync()!);

  print('Nilai biru (0-255):');
  int biru1 = int.parse(stdin.readLineSync()!);

  print('\nMasukkan nilai warna kedua:');
  print('Nilai merah (0-255):');
  int merah2 = int.parse(stdin.readLineSync()!);

  print('Nilai hijau (0-255):');
  int hijau2 = int.parse(stdin.readLineSync()!);

  print('Nilai biru (0-255):');
  int biru2 = int.parse(stdin.readLineSync()!);

  // Membuat objek warna menggunakan constant constructor
  final warna1 = Warna(merah1, hijau1, biru1);
  final warna2 = Warna(merah2, hijau2, biru2);

  // Menampilkan informasi warna
  print('\nInformasi Warna 1:');
  warna1.tampilkanInfo();

  print('\nInformasi Warna 2:');
  warna2.tampilkanInfo();
}
