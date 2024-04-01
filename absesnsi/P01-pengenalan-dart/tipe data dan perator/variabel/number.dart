void main() {
  // Untuk memastikan value yang diinputkan adalah angka, awali pembuatan variabel dengan 'num'
  // Dengan ini, jika yang diinputkan selain number, maka hasilnya akan error
  num angka = 23;

  // Untuk lebih spesifik, misalnya dengan menetapkan bahwa angka tersebut harus integer, awali dengan 'int'
  int angka1 = 27;

  // Sedangkan untuk bilangan desimal/double, awali dengan double
  double angka2 = 29.3;

  print(angka);
  print(angka1);
  print(angka2);
  
  // Untuk mengecek type number seperti di bawah
  print(angka.runtimeType); // yang ini akan menyesuaikan dengan angka yang diberikan. Jika integer, maka outputnya int. Dan jika double, maka outputnya double
  print(angka1.runtimeType);
  print(angka2.runtimeType);

  // mengubah menjadi type data string
  print(angka.toString());
  // untuk memeriksa type data yang sudah diubah ke string
  print(angka.toString().runtimeType);

  // Untuk membulatkan ke bawah
  print(angka2.floor());

  // Untuk membulatkan ke atas
  print(angka2.ceil());

  // Untuk membulatkan ke angka terdekat
  print(angka2.round());

  // Untuk mengubah type data integer menjadi double
  print(angka.toDouble());
  // Untuk melihat typenya
  print(angka.toDouble().runtimeType);

  // Untuk mengubah type data double menjadi integer
  print(angka2.toInt());
  // Untuk melihat typenya
  print(angka2.toInt().runtimeType);

  // Jika ada banyak angka di belakang koma, kita bisa hanya menampilkan beberapa jumlah angka saja di belakang koma.
  // Misalnya :
  double angka3 = 21.454673873;

  // menampilkan/membulatkan jumlah angka setelah koma
  print(angka3.toStringAsFixed(4));

  // menampilkan jumlah angka di depan
  print(angka3.toStringAsPrecision(3));
}