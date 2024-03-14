void main() {
  /*tipe namaFungsi(parameter){
    //kode
    //kode
    return nilai (sesuai tipe);
  } */

  //fungsi main adalah fungsi pertama yang dieksekusi ketika program dijalankan

  String nama = 'nurasmawati';
  perkenalan(nama);

  int sisi = 10;
  int volume = volumeKubus(sisi);
  print(volume);

}


void perkenalan(String nama) {
  print('Hai, nama saya $nama');
}


  //membuat fungsi yang memiliki return nilai
  //contohnya volume kubus

int volumeKubus(int sisi){
  return sisi * sisi * sisi;
}