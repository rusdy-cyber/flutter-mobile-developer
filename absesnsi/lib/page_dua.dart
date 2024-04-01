import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 90,
                ),
                SizedBox(height: 10),
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 34, 35, 36),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Di ",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Warna teks hitam
                      ),
                    ),
                    Text(
                      "Presensi",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue, // Warna teks biru
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Hallo, silahkan masuk untuk melanjutkan",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromRGBO(160, 164, 168, 0.745),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nama Pengguna',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Kata Sandi',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Aksi saat tombol "Lupa Password" ditekan
                    },
                    child: Text(
                      "Lupa Password ?",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue, // Warna teks biru
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60), // Jarak antara teks dan tombol navigasi kembali
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigasi kembali ke halaman pertama
                  },
                  child: Text("Kembali"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
