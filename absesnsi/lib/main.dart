import 'package:flutter/material.dart';
import 'page_dua.dart'; // Import file halaman kedua

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onVerticalDragEnd: (DragEndDetails details) {
              if (details.primaryVelocity < 0) { // Geser ke atas
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageDua()), // Navigasi ke halaman kedua
                );
              }
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.only(top: 270.0),
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
            ),
          ),
        ),
      ),
    );
  }
}
