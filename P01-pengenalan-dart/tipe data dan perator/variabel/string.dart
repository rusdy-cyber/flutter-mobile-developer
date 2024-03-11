/* Selain dengan penulisan var nama_var = 'value' yang dimana variabel tersebut bersifat dinamik,
bisa juga dengan langsung menginisialisasi 
bahwa variabel tersebut harus string dengan cara, String nama_var = 'value'. Dengan cara tersebut, 
jika yang dimasukkan di valuenya integer, maka akan terjadi error.
*/ 

void main() {
  String nama = 'novan rsd';
  

  //print biasa
  print(nama);

  //mengecek apakah ada string tertentu, keluarannya adalah true atau false
  print(nama.contains('novan')); //keluarannya adalah true

  //untuk mengubah menjadi huruf kecil semua
  print(nama.toLowerCase()); //keluarannya adalah novan rsd

  //untuk mengubah menjadi huruf besar semua
  print(nama.toUpperCase()); //keluarannya adalah novan rsd

  //untuk memilih kata tertentu yang ingin ditampilkan dengan menggunakan index
  print(nama.substring(5)); //keluarannya adalah rsd novan
  print(nama.substring(5, 9)); //keluarannya adalah rsd. Artinya mulai dari huruf index ke 5 (masuk) dan akhiri pada index ke 9 (tidak masuk) 

  //menghitung panjang string
  print(nama.length); //keluarannya adalah 16
  
  //menghilangkan spasi di depan (kanan) dan di belakang (kiri)
  /* Misalnya : */
  String name = ' novan rsd ';
  print(name.trim()); //keluarannya = novan rsd
  
  //Untuk spasi yang di depan:
  print(name.trimRight());
    
  //Untuk spasi yang di depan:
  print(name.trimLeft());
  
  //mendapatkan nilai desimal ASCII 
  print(nama.codeUnitAt(0)); //keluaranyya adalah nilai desimal ASCII dari huruf N

  //menampilkan index karakter dalam string
  print(nama.indexOf('N')); //keluarannya adalah 0
  print(nama.indexOf('u')); //keluarannya adalah 1, karena hanya menampilkan yang paling pertama dijumpai saja
  
  print(nama.startsWith('Nur')); //keluarannya adalah true

  //mengecek apakah diakhiri dengan string/karakter tertentu
  print(nama.endsWith('novan')); //keluarannya adalah true

  //mengecek apakah variabelnya kosong 
  print(nama.isEmpty); //keluarannya adalah false

  //mengecek apakah variabelnya tidak kosong
  print(nama.isNotEmpty); //keluarannya adalah true

  // Berikutnya jika ada seperti berikut:
  var angka = 17; //type datanya adalah integer

  //mengubah ke type data string
  print(angka.toString());

  // Atau
  var angkaa = 17;
  String namaa = angkaa.toString();

  print(namaa);

  // Selanjutnya mengubah type data string menjadi list, dengan cara seperti di bawah:
  String daftarhewan = 'Kucing, Anjing, Kelinci';

  //mengubah menjadi list
  print(daftarhewan.split(',')); //keluarannya adalah [kucing, anjing, kelinci]
  print(daftarhewan.split(',')[0]); //keluarannya adalah kucing
}