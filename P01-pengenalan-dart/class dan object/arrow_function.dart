/*cara yang berbeda untuk membuat sebuah function
Penulisan arrow function :
  Tipe namaFungsi(parameter) => return nilai
  }
  tanda => bisa disebut sebagai return*/

void main() {
  String nama = 'Elana Karisma';
  perkenalan(nama);

  int sisi = 10;
  int volume = volumeKubus(sisi);
  // print volume adalah hasil dari sisi x sisi x sisi
  print(volume);
  print('Nilai Phi ${nilaiPhi()}');
}

// menggunakan arrow function
void perkenalan(String nama) => print('Halo, nama saya $nama');

/* namun jika ini digunakan arrow function dengan hanya menggunakan tanda => maka akan terjadi error
karena => langsung return/mengembalikan nilai
jadi kita bisa langsung menghapus saja nilai return nya*/

int volumeKubus(int sisi) => sisi * sisi * sisi;

double nilaiPhi() => 3.14;
