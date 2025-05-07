import 'dart:io';

class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  // Named constructor untuk membuat segitiga berdasarkan jenis
  Segitiga.buatSegitiga(this.jenis) : alas = 0, tinggi = 0;

  // Method untuk input nilai alas dan tinggi
  void inputNilai() {
    print('Masukkan nilai alas segitiga (cm):');
    alas = double.parse(stdin.readLineSync()!);

    print('Masukkan nilai tinggi segitiga (cm):');
    tinggi = double.parse(stdin.readLineSync()!);
  }

  // Method untuk menghitung luas
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }

  // Method untuk menampilkan informasi segitiga
  void tampilkanInfo() {
    print('\nInformasi Segitiga:');
    print('Jenis: $jenis');
    print('Alas: $alas cm');
    print('Tinggi: $tinggi cm');
    print('Luas: ${hitungLuas()} cm²');
  }
}

void main() {
  print('Masukkan jenis segitiga (siku-siku/sama sisi/sembarang):');
  String jenisInput = stdin.readLineSync()!;

  // Membuat objek segitiga menggunakan named constructor
  Segitiga segitiga = Segitiga.buatSegitiga(jenisInput);

  // Input nilai alas dan tinggi
  segitiga.inputNilai();

  // Menampilkan informasi segitiga
  segitiga.tampilkanInfo();
}
