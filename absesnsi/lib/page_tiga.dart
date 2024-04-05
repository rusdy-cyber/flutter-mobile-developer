import 'package:flutter/material.dart';
import 'page_empat.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("percobaan alert"),
        actions: [
          ElevatedButton(
            onPressed: () {
              // Navigasi ke halaman empat
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageEmpat()),
              );
            },
            child: Text('Ke Halaman Empat'),
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Menampilkan dialog alert
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Persensi Masuk"),
                  contentPadding: EdgeInsets.zero, // Menghapus padding konten
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
                        Navigator.of(context).pop(); // Menutup dialog alert
                      },
                      child: Text("OK"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Absensi"),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PageTiga(),
  ));
}
