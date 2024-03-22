// class adalah sebuah template atau blueprint
// sedangkan object adalah hasil dari realisasi class/object nyata
// di dalam class terdapat atribut/properti dan method/function

void main() {
  RekeningBank rekeningNovan = new RekeningBank();
  rekeningNovan.namaPemilik = 'novan rsdy';
  rekeningNovan.namaBank = 'BRI';
  rekeningNovan.saldo = 1000000;

  print(rekeningNovan.saldo);
  print(rekeningNovan.namaBank);
  print(rekeningNovan.namaPemilik);

  rekeningNovan.ceksaldo();

  // membuat objek baru
  RekeningBank rekeningela = new RekeningBank(
      namaPemilik: 'novan rsdy', namaBank: 'BNI', saldo: 50000000);

  print(rekeningela.saldo);
  print(rekeningela.ceksaldo());
  print(rekeningela.namaBank);
  print(rekeningela.namaPemilik);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  var saldo;

  RekeningBank(
      {this.namaPemilik,
      this.namaBank,
      this.saldo}); //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional

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
