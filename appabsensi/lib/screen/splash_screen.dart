import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:async'; // Import library dart:async untuk menggunakan Timer

import 'package:appabsensi/screen/login_screen.dart'; 

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delay untuk menampilkan splash screen selama beberapa detik sebelum pindah ke halaman berikutnya
    Timer(
      const Duration(seconds: 2), // Ubah durasi sesuai kebutuhan Anda
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => screenlogin()), 
        );
      },
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 128,
            ),
            const SizedBox(height: 8),
            Text(
              'PresensiApp',
              style: TextStyle(
                fontSize: 34,
                color: const Color(0xFF12A3DA),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
