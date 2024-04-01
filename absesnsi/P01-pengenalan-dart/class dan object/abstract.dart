/* abstract class tidak bisa dibuat sebagai object
abstract class biasanya dibuat utk sebagai kerangka yang akan diwariskan sifatnya/properti dan methodnya ke kelas yang lain*/
void main() {
  print('----Mobil----');
  Mobil avanza = new Mobil(roda: 4);
  print(avanza.suaraklakson);
  avanza.jumlahRoda(avanza.roda);
  avanza.berjalan(); //penambahan saat abstract class

  print('----Motor----');
  Motor beat = new Motor(roda: 2);
  beat.jumlahRoda(beat.roda);
  beat.berjalan(); //penambahan saat abstract class
}

// kita bisa membuat sebuah abstarct method juga
abstract class Kendaraan {
  String suaraklakson = 'tinnnnnn';

  void klakson() {
    print(suaraklakson);
  }

  void jumlahRoda(int roda) {
    print(roda);
  }

  // jika membuat sebuah method baru maka harus diimplementasikan juga di mobil dan juga motor
  void berjalan();
}

class Mobil extends Kendaraan {
  int roda;
  Mobil({this.roda = 0});

  @override
  void jumlahRoda(int roda) {
    print(
        'Jumlah Roda Mobil : $roda'); //sedangkan ini outputnya adalah Jumlah roda mobil : 4
    super.jumlahRoda(roda); //hasil outputnya adalah 4
  }

  // ini adalah implementasi dari method baru
  @override
  void berjalan() {
    print('Mobil Berjalan');
  }
}

class Motor extends Kendaraan {
  int roda;
  Motor({this.roda = 0});

  @override
  void jumlahRoda(int roda) {
    print(
        'Jumlah Roda Motor : $roda'); //sedangkan ini outputnya adalah Jumlah roda motor : 2
    super.jumlahRoda(roda); //hasil outputnya adalah 2
  }

  // ini adalah implementasi dari method baru
  @override
  void berjalan() {
    print('Motor Berjalan');
  }
}
