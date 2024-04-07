import 'package:flutter/material.dart';
import 'package:appabsensi/screen/dashboard_screen.dart';
import 'package:appabsensi/screen/login_screen.dart';
import 'package:appabsensi/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aplikasi absensi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Set halaman awal aplikasi
      routes: {
        '/splash': (context) => LoadingScreen(),
        '/login': (context) => screenlogin(),
        '/dashboard': (context) => Dasboard(), // Tambahkan rute untuk halaman dashboard
      },
    );
  }  
}


