/* getter setter digunakan untuk menetapkan sebuah nilai pada properti
dan bisa diambil kembali nilainya*/

void main() {
  RekeningBank rekeningNovan = new RekeningBank();
  rekeningNovan.namaPemilik = 'novan rsdy';
  rekeningNovan.namaBank = 'BRI';
  rekeningNovan.saldo = 1000000;

  print(rekeningNovan.saldo);
  print(rekeningNovan.namaBank);
  print(rekeningNovan.namaPemilik);

  rekeningNovan.ceksaldo();
  print('-------------------------');

  // membuat objek baru
  RekeningBank rekeninga = new RekeningBank(
      namaPemilik: 'novan rsdy', namaBank: 'BNI', saldo: 50000000);

  print(rekeninga.namaPemilik);
  print(rekeninga.namaBank);
  print(rekeninga.saldo);
  rekeninga.ceksaldo();
  print('---------------------');

  RekeningBank rekenningRusdy = new RekeningBank(
    namaPemilik: 'ardi',
    namaBank: 'Bank Syariah',
    saldo: 15000000,
  );

  print(rekenningRusdy.getPemilik);
  print(rekenningRusdy.getBank);
  print(rekenningRusdy.saldo);
  rekenningRusdy.setSaldo = 25000000;
  print(rekenningRusdy.saldo);
  rekenningRusdy.setNamaPemilik = 'ardi';
  rekenningRusdy.setNamaBank = 'BCA';
  print(rekenningRusdy.getPemilik);
  print(rekenningRusdy.getBank);
  print(rekenningRusdy.getSaldo);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  int saldo;

  // membuat set getter setter
  set setNamaPemilik(var nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String namabank) {
    this.namaBank = namabank;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional
  RekeningBank({this.namaPemilik, this.namaBank, this.saldo = 0});

  ceksaldo() {
    print('Saldo saat ini adalah : $saldo');
  }

  transfer() {
    print('Transfer ');
  }

  ambilsaldo() {
    print('ambil saldo');
  }
}
