import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //untuk menghilangkan tanda debug
      home: Scaffold(
        body: SafeArea(
          child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 0.0, top: 20, right: 0, bottom: 0),
            padding: EdgeInsets.only(left: 0, top: 270.0, right: 0, bottom: 0),
        child: Column(
          
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/logo.png'),
              height: 100,
              ),
              SizedBox(height: 10),
              Text("PresensiApp",
                style: TextStyle(fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue))
              ],
            ),
          )))));
  }
}

