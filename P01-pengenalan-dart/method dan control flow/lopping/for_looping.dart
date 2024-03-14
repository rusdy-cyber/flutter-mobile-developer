void main () {
  //perulangan menggunakan for dengan menggunakan for kita bisa melakukan perulangan selama kondisinya memenuhi
  /*
    for (initial_value; termination_condition; step) {
      //statements
    }
   */

  //Manual
  print(1);
  print(2);
  print(3);

  //Menggunakan For
  print('Menggunakan For');
  int n = 100;
  for (int i = 1; i <= n; i++) {
    if(i % 2 == 0){
      print(i);
    }
  }

  //menggunakan for pada list
  List daftarMakanan = ['Sate', 'Mie Sagu', 'Ayam Bakar'];
  print('Daftar Makanan');  
  print(daftarMakanan);
  for(int i=0 ; i<daftarMakanan.length ; i++) {
    print(daftarMakanan[i]);
  }
}