
void main() {
  // membuat variabel => var nama_variabel = value
  // tipe String
  var name = 'Voyager I';

  // tipe Integer
  var year = 1977;

  // tipe Double
  var antennaDiameter = 3.7;

  // tipe List
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  // tipe Map
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  // tipe Boolean
  var isLoggedIn = true;

  // beberapa perintah untuk menampilkan variabel
  print('Nama: $name');
  print(year);
  print(antennaDiameter);
  print('Planet Pertama: ${flybyObjects[0]}');
  print(image);
  print(isLoggedIn);
}
