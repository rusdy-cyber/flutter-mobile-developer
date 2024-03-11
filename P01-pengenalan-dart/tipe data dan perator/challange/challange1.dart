void main() {
  // mendeklarasi variabel sesuai persyaratan challenge !
  String nama = 'novan rsdy'; // tipe data string
  int tahunBerdiri = 2021; // tipe data int
  String pemilik = 'novan rsdy'; // tipe data string
  String alamat = 'bengkalis'; // tipe data string
  String telepon = '082284852905';  // tipe data string
  bool statusBuka = false; // tipe data boolean

  List<Map> makanan = [
    {
      'menu': 'Keputing Rebus', 'harga': 40000
    },
    {
      'menu': 'Nasi Goreng', 'harga': 20000
    },
    {
      'menu': 'Udang Asam Manis', 'harga': 58000
    },
    {
      'menu': 'Sate Cumi', 'harga': 30000
    }
  ]; // makanan bertipe data list namun data nya berisi map

  List<Map> minuman = [
    {
      'menu': 'Es Jeruk', 'harga': 5000
    },
    {
      'menu': 'Es Kelapa', 'harga': 10000
    },
    {
      'menu': 'Es Teh', 'harga': 3000
    }
  ]; // minuman bertipe data list namun data nya berisi map

  print('Nama Pemilik restoran $nama adalah $pemilik, berdiri pada tahun $tahunBerdiri. Beralamat di $alamat, No Telp $telepon.\n Restoran Sedang ${(statusBuka) ? 'buka' : 'tutup'}');
  print('Di restoran $nama, terdapat menu makanan dan minuman seperti berikut !\n[ MAKANAN ]');
  
  makanan.forEach((data) {
    print('${data['menu']}\nHarga : ${data['harga']}');
  }); // menggunakan foreach untuk melakukan looping data map pada list

  print('\n[ MINUMAN ]');
  minuman.forEach((data) {
    print('${data['menu']}\nHarga : ${data['harga']}');
  }); // menggunakan foreach untuk melakukan looping data map pada list
}
