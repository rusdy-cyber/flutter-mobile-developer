import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Tiga'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Ini adalah Halaman Tiga',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya (halaman dua)
                },
                child: Text('Kembali ke Halaman Dua'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
