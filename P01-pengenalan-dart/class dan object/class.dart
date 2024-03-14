// class adalah sebuah template atau blueprint
// sedangkan object adalah hasil dari realisasi class/object nyata
// di dalam class terdapat atribut/properti dan method/function

void main() {
  RekeningBank rekeningElana = new RekeningBank();
  rekeningElana.namaPemilik = 'Elana Karisma';
  rekeningElana.namaBank = 'BRI';
  rekeningElana.saldo = 1000000;

  print(rekeningElana.saldo);
  print(rekeningElana.namaBank);
  print(rekeningElana.namaPemilik);

  rekeningElana.ceksaldo();

  // membuat objek baru
  RekeningBank rekeningela = new RekeningBank(
      namaPemilik: 'Elana Karisma', namaBank: 'BNI', saldo: 50000000);

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
