// Latihan Lopping [For, While, Do While]
void main() {
  print('Pola Bintang dari Atas ke Bawah Menggunakan For :');
  var n = 5;
  for (int i = 0; i < n; i++) {
    //ini untuk menentukan berapa baris ke bawah
    var bintang = '';
    for (int j = 0; j <= i; j++) {
      //dan ini untuk menentukan berapa baris ke kanan
      bintang = bintang + '*';
    }
    print(bintang);
  }

  print('Pola Bintang dari Bawah ke Atas Menggunakan For :');
  var m = 5;
  for (int i = 0; i < m; i++) {
    var bintang = '';
    for (int j = m; j > i; j--) {
      bintang = bintang + '*';
    }
    print(bintang);
  }

  print('Pola Bintang dari Atas ke Bawah Menggunakan While');
  var x = 5;
  var i = 0;
  while (i < x) {
    var bintang = '';
    var j = 0;
    while (j <= i) {
      bintang += '*';
      j++;
    }
    print(bintang);
    i++;
  }
}
