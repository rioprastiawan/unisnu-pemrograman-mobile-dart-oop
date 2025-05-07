import 'dart:io';

// Base class for shape calculations
abstract class BangunDatar {
  double hitungLuas();
}

// Square class that inherits from BangunDatar
class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }
}

// Triangle class that inherits from BangunDatar
class Segitiga extends BangunDatar {
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }
}

void main() {
  // Get square side length from user
  stdout.write('Masukkan panjang sisi persegi: ');
  double sisiPersegi = double.parse(stdin.readLineSync()!);

  // Create square object and calculate area
  Persegi persegi = Persegi(sisiPersegi);
  print('Luas persegi: ${persegi.hitungLuas()}');

  // Get triangle base and height from user
  stdout.write('Masukkan panjang alas segitiga: ');
  double alasSegitiga = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan tinggi segitiga: ');
  double tinggiSegitiga = double.parse(stdin.readLineSync()!);

  // Create triangle object and calculate area
  Segitiga segitiga = Segitiga(alasSegitiga, tinggiSegitiga);
  print('Luas segitiga: ${segitiga.hitungLuas()}');
}
