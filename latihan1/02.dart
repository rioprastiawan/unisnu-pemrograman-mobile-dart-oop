import 'dart:io';

class Mahasiswa {
  // Properti dengan nilai default
  String nama = "Belum diisi";
  String nim = "Belum diisi";

  // Method untuk menampilkan informasi mahasiswa
  void tampilkanInfo() {
    print("\nInformasi Mahasiswa:");
    print("Nama: $nama");
    print("NIM: $nim");
  }
}

void main() {
  // Membuat objek mahasiswa
  var mahasiswa = Mahasiswa();

  // Meminta input dari user
  stdout.write("Masukkan nama mahasiswa: ");
  String inputNama = stdin.readLineSync()!;

  stdout.write("Masukkan NIM mahasiswa: ");
  String inputNim = stdin.readLineSync()!;

  // Mengubah nilai properti sesuai input
  mahasiswa.nama = inputNama;
  mahasiswa.nim = inputNim;

  // Menampilkan informasi
  mahasiswa.tampilkanInfo();
}
