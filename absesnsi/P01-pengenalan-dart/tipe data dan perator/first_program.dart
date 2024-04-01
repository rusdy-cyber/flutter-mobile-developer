// Untuk variabel itu type nya dinamik, jadi kita bisa menyisipkan dengan berbagai type data, seperti string, integer, float, dan lain-lain.

void main() {
  // Format membuat variabel => var nama_variabel = value

  // ini untuk komentar satu line
  /* ini untuk multi line */

  // String
  var name = 'Voyager I';

  // Integer
  var year = 1977;

  // Double
  var antennaDiameter = 3.7;

  // List
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  // Map
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  // Boolean
  var isLoggedIn = true;

  // Berikut beberapa cara untuk menampilkan variabel
  print('Nama: $name');
  print(year);
  print(antennaDiameter);
  print('Planet Pertama: ${flybyObjects[0]}');
  print(image);
  print(isLoggedIn);
}