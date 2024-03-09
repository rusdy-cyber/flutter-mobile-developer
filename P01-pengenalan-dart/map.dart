void main() {
  // membuat map dengan var yang sifatnya dinamik
  // Map seperti list dimana sekumpulan data, hanya saja menggunakan kurung kurawal {}
  // dan jika di list menggunakan index, maka di map menggunakan 'key': 'value'
  var mahasiswa1 = {'Nama': 'novan', 'Usia': 21, 'NIM': '64042xxx'};

  // Jika seperti di bawah, maka tidak akan bisa jika yang diinputkan adalah list
  // Map<Type Key, Type Value> nama_map = {'key': 'value'}
  Map<String, dynamic> mahasiswa3 = {
    'Nama': 'novan rsd', 
    'Usia': 21,
    'NIM': '64042xxx'
  };



  print(mahasiswa1);
  print(mahasiswa3);

  // Untuk menampilkan value dengan key tertentu
  print(mahasiswa3['Nama']);

  // untuk menampilkan keys yang ada pada map
  print(mahasiswa3.keys);

  // untuk menampilkan values yang ada pada map
  print(mahasiswa3.values);

  // untuk mengecek apakah map memiliki key tertentu
  print(mahasiswa3.containsKey('Nama'));

  // untuk mengecek apakah map memiliki value tertentu
  print(mahasiswa3.containsValue(22));

  // mengembalikan panjang map
  print(mahasiswa3.length);

  // menghapus data map yang memiliki key tertentu
  print(mahasiswa3.remove('Usia'));
  print(mahasiswa3);

  // Mengubah value map
  mahasiswa3['Nama'] = 'novan';
  print(mahasiswa3);
}