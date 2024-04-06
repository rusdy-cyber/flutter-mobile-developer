import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loadingScreen extends StatelessWidget{
  const loadingScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 128,
            ),
            const SizedBox(height: 8,),
            Text(
              'PresensiApp',
              style: GoogleFonts.manrope(
                fontSize: 34,
                color: const Color(0xFF12A3DA),
                fontWeight: FontWeight.w700,
              )  
            ),
          ],
        ),),
    );
  }
}