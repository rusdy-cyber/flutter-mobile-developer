void main() {
  // Sistem penilaian hasil belajar [0-100]

  // If Else
  // Kasus Pertama
  print('Penilaian Hasil Belajar -> if else :');
  var nilai = 70;
  if (nilai >= 91 && nilai <= 100) {
    print('Sangat Baik');
  } else if (nilai >= 81 && nilai <= 90) {
    print('Baik');
  } else if (nilai >= 71 && nilai <= 80) {
    print('Cukup');
  } else if (nilai >= 61 && nilai <= 70) {
    print('Kurang');
  } else if (nilai >= 0 && nilai <= 60) {
    print('Sangat Kurang');
  } else {
    print('Nilai Invalid');
  }

  // Kasus Kedua
  print('Sistem Penilaian Makanan -> if else :');
  var makanan = 'E';
  if (makanan == 'A') {
    print('Sangat Enak');
  } else if (makanan == 'B') {
    print('Enak');
  } else if (makanan == 'C') {
    print('Cukup');
  } else if (makanan == 'D') {
    print('Kurang');
  } else if (makanan == 'E') {
    print('Belajar Dulu');
  } else {
    print('Nilai Invalid');
  }

  // Ternary Operator
  // Kasus Pertama
  print('Penilaian Hasil Belajar -> Ternary Operator :');
  print((nilai >= 91 && nilai <= 100)
      ? 'Sangat Baik'
      : (nilai >= 81 && nilai <= 90)
          ? 'Baik'
          : (nilai >= 71 && nilai <= 80)
              ? 'Cukup'
              : (nilai >= 61 && nilai <= 70)
                  ? 'Kurang'
                  : (nilai >= 0 && nilai <= 60)
                      ? 'Sangat Kurang'
                      : 'Nilai Invalid');

  // Kasus Kedua
  print('Sistem Penilaian Makanan -> Ternary Operator :');
  print((makanan == 'A')
      ? 'Sangat Enak'
      : (makanan == 'B')
          ? 'Enak'
          : (makanan == 'C')
              ? 'Cukup'
              : (makanan == 'D')
                  ? 'Kurang'
                  : (makanan == 'E')
                      ? 'Belajar Dulu'
                      : 'Nilai Invalid');

  // Switch Case
  // Kasus Permata
  print('Penilaian Hasil Belajar -> Switch Case :');
  switch (nilai) {
    case >= 91 && <= 100:
      print('Sangat Baik');
      break;
    case >= 81 && <= 90:
      print('Baik');
      break;
    case >= 71 && <= 80:
      print('Cukup');
      break;
    case >= 61 && <= 70:
      print('Kurang');
      break;
    case >= 0 && <= 60:
      print('Sangat Kurang');
      break;
    default:
      print('Nilai Invalid');
      break;
  }

  // kasus kedua
  print('Sistem Penilaian Makanan -> Switch Case :');
  switch (makanan) {
    case 'A':
      print('Sangat Enak');
      break;
    case 'B':
      print('Enak');
      break;
    case 'C':
      print('Cukup');
      break;
    case 'D':
      print('Kurang');
      break;
    case 'E':
      print('Belajar Dulu');
      break;
    default:
      print('Nilai Invalid');
      break;
  }
}
