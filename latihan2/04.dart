import 'dart:io';

// Abstract class for Shape
abstract class Bentuk {
  double hitungLuas();
}

// Circle class that implements Shape
class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() {
    return 3.14 * jariJari * jariJari;
  }
}

void main() {
  // Get input from user
  stdout.write('Masukkan jari-jari lingkaran: ');
  double jariJari = double.parse(stdin.readLineSync()!);

  // Create circle object and calculate area
  Lingkaran lingkaran = Lingkaran(jariJari);
  double luas = lingkaran.hitungLuas();

  // Display result
  print('Luas lingkaran dengan jari-jari $jariJari adalah: $luas');
}
