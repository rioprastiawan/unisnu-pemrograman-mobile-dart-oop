import 'dart:io';

// Class induk Hewan
class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print('$nama mengeluarkan suara');
  }
}

// Class anak Kucing yang mewarisi Hewan
class Kucing extends Hewan {
  String jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print('$nama mengeluarkan suara: Meow!');
    print('Jenis bulu kucing: $jenisBulu');
  }
}

void main() {
  // Meminta input dari user
  stdout.write('Masukkan nama kucing: ');
  String namaKucing = stdin.readLineSync()!;

  stdout.write('Masukkan jenis bulu kucing: ');
  String jenisBuluKucing = stdin.readLineSync()!;

  // Membuat objek Kucing
  Kucing kucingku = Kucing(namaKucing, jenisBuluKucing);

  // Memanggil metode suara
  kucingku.suara();
}
