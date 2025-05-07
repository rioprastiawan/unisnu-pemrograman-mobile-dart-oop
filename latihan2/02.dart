import 'dart:io';

class RekeningBank {
  // Properti private
  double _saldo = 0;

  // Getter untuk membaca saldo
  double get saldo => _saldo;

  // Metode untuk setor uang
  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print('Berhasil setor: Rp$jumlah');
      print('Saldo saat ini: Rp$_saldo');
    } else {
      print('Jumlah setor harus lebih dari 0');
    }
  }

  // Metode untuk tarik uang
  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      print('Berhasil tarik: Rp$jumlah');
      print('Saldo saat ini: Rp$_saldo');
    } else if (jumlah > _saldo) {
      print('Saldo tidak mencukupi');
    } else {
      print('Jumlah penarikan harus lebih dari 0');
    }
  }
}

void main() {
  var rekeningku = RekeningBank();

  while (true) {
    print('\nPilih transaksi:');
    print('1. Setor');
    print('2. Tarik');
    print('3. Cek Saldo');
    print('4. Keluar');

    stdout.write('Masukkan pilihan (1-4): ');
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        stdout.write('Masukkan jumlah setor: Rp');
        double? jumlahSetor = double.tryParse(stdin.readLineSync() ?? '');
        if (jumlahSetor != null) {
          rekeningku.setor(jumlahSetor);
        } else {
          print('Input tidak valid');
        }
        break;

      case '2':
        stdout.write('Masukkan jumlah tarik: Rp');
        double? jumlahTarik = double.tryParse(stdin.readLineSync() ?? '');
        if (jumlahTarik != null) {
          rekeningku.tarik(jumlahTarik);
        } else {
          print('Input tidak valid');
        }
        break;

      case '3':
        print('Saldo saat ini: Rp${rekeningku.saldo}');
        break;

      case '4':
        print('Terima kasih telah menggunakan layanan kami');
        return;

      default:
        print('Pilihan tidak valid');
    }
  }
}
