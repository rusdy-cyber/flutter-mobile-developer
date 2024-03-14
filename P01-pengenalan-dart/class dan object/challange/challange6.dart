void main() {
  perhitungan(3);
}

/*delay pertama 1 detik, delay kedua 2 detik, delay ketiga 3 detik
i akan di print secara bersamaan namun terjadi delay terlebih dahulu sepanjang dan selama nilai i tesebut
contohnya jika seconds diganti nilainya menjadi 1 maka i akan diprint secara bersamaan dan outputnya juga hanya delay 1 detik semua
namun jika di ganti i maka delay nya akan berurut dari 1 detik, 2 dan 3*/
void perhitungan(int n) {
  for (int i = 1; i <= n; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
