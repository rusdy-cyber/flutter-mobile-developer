import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appabsensi/screen/dashboard_screen.dart';
import 'dart:math';

class riwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Riwayat absensi",
          style: GoogleFonts.manrope(
              fontSize: 16,
              color: const Color(0xFF101317),
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 17, 157, 196), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color.fromARGB(255, 248, 248, 248),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Jumlah izin",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "0",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 10, 143, 54), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color.fromARGB(167, 150, 255, 101),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Jumlah Hadir",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "2",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 68, 7, 87), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color.fromARGB(255, 122, 82, 196),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Jumlah Sakit",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "1",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 116, 10, 10), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: const Color.fromARGB(255, 223, 87, 87),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Jumlah alpa",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "0",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    color: const Color(0xFF101317),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            // Implementasi widget kalender
            ListView.builder(
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // Menjadikan ListView tidak bisa discroll
              itemCount:
                  1, // Hanya satu item, karena kita hanya ingin menampilkan kalender sekali
              itemBuilder: (context, _) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "April 2024", // Ganti dengan bulan dan tahun yang sesuai
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        for (var day in [
                          'Sen',
                          'Sel',
                          'Rab',
                          'Kam',
                          'Jum',
                          'Sab',
                          'Min'
                        ])
                          Expanded(
                            child: Container(
                              height:
                                  40, // Sesuaikan dengan tinggi yang diinginkan
                              decoration: BoxDecoration(
                                color: Colors.grey[
                                    200], // Warna latar belakang untuk hari
                              ),
                              child: Center(
                                child: Text(
                                  day,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        for (var i = 0; i < 7; i++)
                          Expanded(
                            child: Container(
                              height:
                                  40, // Sesuaikan dengan tinggi yang diinginkan
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: Center(
                                child: Text(
                                  (i + 1).toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("activitas",
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => riwayat()),
                            );
                          },
                          child: Text(
                            'Lihat semua',
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              color: const Color(0xFF12A3DA),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
