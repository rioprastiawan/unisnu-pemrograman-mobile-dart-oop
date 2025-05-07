import 'dart:io';

// Class untuk merepresentasikan sebuah buku
class Buku {
  String judul;
  String pengarang;

  // Konstruktor dengan parameter
  Buku(this.judul, this.pengarang);
}

void main() {
  // Meminta input dari user
  stdout.write("Masukkan judul buku: ");
  String judulBuku = stdin.readLineSync()!;

  stdout.write("Masukkan nama pengarang: ");
  String namaPengarang = stdin.readLineSync()!;

  // Membuat objek buku dengan input user
  var bukuSaya = Buku(judulBuku, namaPengarang);

  // Mencetak informasi buku
  print("\nInformasi Buku:");
  print("Judul: ${bukuSaya.judul}");
  print("Pengarang: ${bukuSaya.pengarang}");
}
