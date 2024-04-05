import 'package:flutter/material.dart';

class PageEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Empat'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage('assets/images/img_clip_path_group.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Pegawai',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Nama Departemen',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Spacer(), // Spacer untuk membuat jarak kosong yang meregangkan elemen-elemen ke sisi kanan
                Image.asset(
                  'images/notiv.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kehadiran Hari Ini',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rekap Absen',
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromARGB(255, 134, 130, 130),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'masuk',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            '07:00',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Tepat Waktu',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromARGB(255, 134, 130, 130),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'keluar',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            '--:--',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Pulang',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Menampilkan dialog alert
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Persensi Masuk"),
                        contentPadding:
                            EdgeInsets.zero, // Menghapus padding konten
                        content: IntrinsicHeight(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/icon.png',
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(height: 10),
                              Text("Csan untuk absensi"),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Menutup dialog alert
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 41, 224)),
                child: Text(
                  "Tekan untuk absesnsi keluar",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 67, 70),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromARGB(255, 134, 130, 130),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Izin absen',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            'isi form untuk ajuka absen',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          SizedBox(height: 50),
                          Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                // Aksi saat tombol "absensi" ditekan
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Text(
                                "Tekan untuk Persensi keluar",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 7, 5, 5),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(121, 45, 156, 1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromARGB(255, 134, 130, 130),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Ajukan Cuti',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Isi  form untuk ajukan cuti',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          SizedBox(height: 50),
                          Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                // Aksi saat tombol "absensi" ditekan
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Text(
                                "Tekan untuk Persensi keluar",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 7, 5, 5),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
