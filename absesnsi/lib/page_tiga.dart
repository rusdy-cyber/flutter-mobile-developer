import 'package:flutter/material.dart';
import 'page_empat.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Tiga ya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ini adalah Halaman ke Tiga',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
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
      ),
    );
  }
}
