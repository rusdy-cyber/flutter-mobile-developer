import 'package:flutter/material.dart';
import 'page_dua.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(), // Menggunakan widget MainPage sebagai halaman utama
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PageDua()),
                );
              },
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "PresensiApp",
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PageDua()),
                );
              },
              child: Text(
                "masuk",
                style: TextStyle(
                  fontSize: 14.0,
                  color: const Color.fromARGB(255, 174, 177, 179),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
