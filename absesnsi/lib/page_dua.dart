import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 0.0, top: 0, right: 0, bottom: 0),
            padding: EdgeInsets.only(left: 0, top: 20.0, right: 0, bottom: 0),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 90,
                ),
                SizedBox(height: 10),
                Text(
                  "Page Dua",
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 20), // Jarak antara teks dan tombol navigasi kembali
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
