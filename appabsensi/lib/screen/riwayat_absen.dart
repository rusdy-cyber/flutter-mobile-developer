import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appabsensi/screen/dashboard_screen.dart';
import 'dart:math';

class Riwayat extends StatelessWidget {
  // Widget untuk menampilkan kalender
  Widget buildCalendar() {
    // Tanggal yang dipilih
    final List<int> selectedDates = [7, 8, 9];
    // Tanggal saat ini
    final int currentDate = 10;
    // Hari Minggu
    final List<int> sundays = [3, 10, 17, 24, 31];

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
      ),
      itemCount: 31,
      itemBuilder: (context, index) {
        int day = index + 1;
        return Container(
          decoration: BoxDecoration(
            color: getColorForDate(day, selectedDates, currentDate),
            border: Border.all(color: Colors.black12),
          ),
          child: Center(
            child: Text(
              '$day',
              style: TextStyle(
                color: getTextColorForDate(day, sundays),
              ),
            ),
          ),
        );
      },
    );
  }

  // Mendapatkan warna latar belakang untuk tanggal tertentu
 Color getColorForDate(int date, List<int> selectedDates, int currentDate) {
  if (selectedDates.contains(date)) {
    return Colors.green; // Memberikan warna hijau untuk tanggal yang dipilih
  } else if (date == currentDate) {
    return Colors.blue; // Memberikan warna biru untuk tanggal saat ini
  } else {
    return Colors.white; // Mengembalikan warna putih untuk tanggal lainnya
  }
}


  // Mendapatkan warna teks untuk tanggal tertentu
  Color getTextColorForDate(int date, List<int> sundays) {
  // Jika tanggal adalah hari Minggu (hari ke-7), maka kembalikan warna merah
  if (date % 7 == 0) {
    return Colors.red;
  } else {
    return Colors.black;
  }
}


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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              // Content Cards
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 17, 157, 196),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color.fromARGB(255, 248, 248, 248),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 10, 143, 54),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color.fromARGB(167, 150, 255, 101),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 68, 7, 87),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color.fromARGB(255, 122, 82, 196),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 116, 10, 10),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: const Color.fromARGB(255, 223, 87, 87),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                "April 2024",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
                ],
              ),
              // Kalender
              
              SizedBox(height: 10),
              // Hari
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
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        child: Center(
                          child: Text(
                            day,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 5),
              // Tanggal
              buildCalendar(),
              SizedBox(height: 20,),
              // Aktivitas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Aktivitas",
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Lihat semua',
                      style: GoogleFonts.manrope(
                        fontSize: 14,
                        color: const Color(0xFF12A3DA),
                      ),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
