void main() {
  EWallet dompetnovan = new EWallet('novan rsdy');
  print('----Nilai Awal----');
  print(dompetnovan.getNama);
  print(dompetnovan.getSaldo);
  print(dompetnovan.getMutasi);
  print('----Request----');
  dompetnovan.Request(2000000);
  print(dompetnovan.getSaldo);
  print(dompetnovan.getMutasi);
  print('---- Transfer----');
  dompetnovan.transfer(500000);
  print(dompetnovan.getSaldo);
  print(dompetnovan.getMutasi);
}

class EWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNama(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  EWallet(this.namaPemilik);

  transfer(int nominal) {
    saldo -= nominal;
    addMutasi('Transfer $nominal');
  }

  Request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}
