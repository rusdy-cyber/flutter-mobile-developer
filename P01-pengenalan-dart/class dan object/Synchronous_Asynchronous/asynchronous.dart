
Future<void> main() async {
  print(await printData());
  print('Menunggu data');
}

/*fungsi async dan await adalah untuk mengembalikan fungsi menjadi asynchronous dan bukan synchronous
kemudian juga untuk string dan void ditambahkan kata Future
async utk menandakan fungsi adalah asynchronous
await utk menunggu fetchData selesai baru melakukan sebuah return

ini code biasa tanpa kondisi

Future<String> printData() async {
  var data = await fetchData();
  return 'data : $data';
}
*/

// ini adalah code yang bisa membuat sebuah kondisi jika data itu bisa diambil dan juga jika terjadi error
Future<String> printData() async {
  try {
    // mencoba dulu statement dalam try
    var data = await fetchData();
    return 'data : $data';
  } catch (err) {
    return err.toString();
    //jika error bagian ini yang akan diambil
  }
}

// di delay selama 2 detik, baru akan di print
Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => throw ('data gagal di proses'),
  );
}
