// ignore_for_file: depend_on_referenced_packages

import 'package:appabsensi/screen/riwayat_absen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dasboard extends StatelessWidget {
  const Dasboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            //Greetings
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset(
                    'assets/images/user_profile.png',
                    height: 84,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Pegawai',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.manrope(
                          fontSize: 20,
                          color: const Color(0xFF263238),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Nama Departemen',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          color: const Color(0xFF263238),
                        ),
                      ),
                    ],
                  )
                ]),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none),
                      iconSize: 32,
                      color: Colors.black,
                    ),
                    Positioned(
                      right: 10,
                      top: 8,
                      child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: const Color(0xFFEF6497),
                              borderRadius: BorderRadius.circular(15 / 2)),
                          child: Center(
                              child: Text(
                            "2",
                            style: GoogleFonts.mPlus1p(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w800),
                          ))),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kehadiran hari ini',
                  style: GoogleFonts.manrope(
                      fontSize: 16,
                      color: const Color(0xFF101317),
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Riwayat()),
                    );
                  },
                  child: Text(
                    'Rekap Absensi',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      color: const Color(0xFF12A3DA),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 219, 226, 228),
                          width: 1.0), // Gray border for the Card
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    color: Colors.white,
                    child: Padding(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(35, 48, 134, 254),
                                    borderRadius: BorderRadius.circular(10)),
                                child: SvgPicture.asset(
                                    'assets/svgs/login_outlined.svg'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Masuk',
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  color: const Color(0xFF101317),
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            '07:00',
                            style: GoogleFonts.lexend(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF101317),
                            ),
                          ),
                          Text(
                            'Tepat Waktu',
                            style: GoogleFonts.lexend(
                              fontSize: 16,
                              color: const Color(0xFF101317),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color.fromARGB(255, 219, 226, 228),
                          width: 1.0), // Gray border for the Card
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    color: Colors.white, // White background color for the Card
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(35, 48, 134, 254),
                                    borderRadius: BorderRadius.circular(10)),
                                child: SvgPicture.asset(
                                  'assets/svgs/logout_outlined.svg',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Keluar',
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  color: const Color(0xFF101317),
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '--:--',
                            style: GoogleFonts.lexend(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF101317),
                            ),
                          ),
                          Text(
                            'Pulang',
                            style: GoogleFonts.lexend(
                              fontSize: 16,
                              color: const Color(0xFF101317),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // menampilkan dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Persensi Masuk"),
                      titlePadding:
                          EdgeInsets.only(left: 20, top: 20, right: 20),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      content: Container(
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  Image.asset(
                                    'assets/images/calender.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Tanggal Masuk",
                                        style: GoogleFonts.lexend(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF101317),
                                        ),
                                      ),
                                      Text(
                                        "Selasa, 23 Agustus 2023",
                                        style: GoogleFonts.lexend(
                                          fontSize: 14,
                                          color: const Color(0xFF101317),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  Image.asset(
                                    'assets/images/jam.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jam Masuk",
                                        style: GoogleFonts.lexend(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF101317),
                                        ),
                                      ),
                                      Text(
                                        "07:03:23",
                                        style: GoogleFonts.lexend(
                                          fontSize: 14,
                                          color: const Color(0xFF101317),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Text(
                                "Foto selfie di area kampus",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 105, 101, 101),
                                ),
                              ),
                              SizedBox(height: 20),
                              Center(
                                child: FractionallySizedBox(
                                  // Menggunakan FractionallySizedBox untuk mengatur lebar
                                  widthFactor: 0.9, // Faktor lebar 90%
                                  child: InkWell(
                                    onTap: () {
                                      // Tambahkan fungsionalitas yang diinginkan saat card ditekan di sini
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/kamera.png',
                                              width: 50,
                                              height: 50,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "ambil gambar",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 105, 101, 101),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your button functionality here
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor: Color(0xFF12A3DA),
                              ),
                              child: Text(
                                'Hadir',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 252, 252, 252),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(double.infinity, 50), // width and height
                  backgroundColor: const Color(0xFF12A3DA),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: Row(
                mainAxisSize: MainAxisSize
                    .min, // Use min to prevent the Row from expanding
                children: [
                  const Icon(
                    Icons
                        .circle_outlined, // This is the icon you want before the text
                    color: Colors.white, // Icon color
                    size: 24.0, // Icon size
                  ),
                  const SizedBox(width: 8), // Spacing between icon and text
                  Text(
                    'Tekan untuk presensi keluar',
                    style: GoogleFonts.manrope(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    clipBehavior: Clip
                        .antiAlias, // This ensures the image is clipped to the card's shape
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // If you want rounded corners
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/bg_izin.png'), // Replace with your image asset
                          fit: BoxFit
                              .cover, // This will fill the container's bounds with the image
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Izin Absen',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10), // Spacer between text and button
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'isi form untuk mengajukan absen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow
                                  .visible, // Atur overflow ke visible agar teks melebihi batas tetap ditampilkan
                              maxLines: 2, // Atur maksimal 2 baris untuk teks
                            ),
                          ),

                          SizedBox(
                              height: 20), // Spacer between text and button
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your button functionality here
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Atur nilai border radius sesuai keinginan
                                  ),
                                  // Atur warna background button di sini jika diperlukan
                                ),
                                child: Text(
                                  'Ajukan Izin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors
                                        .black, // Atur warna teks menjadi hitam
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10), // Spacer at the end
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip
                        .antiAlias, // This ensures the image is clipped to the card's shape
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // If you want rounded corners
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/bg_cuti.png'), // Replace with your image asset
                          fit: BoxFit
                              .cover, // This will fill the container's bounds with the image
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Izin Cuti',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10), // Spacer between text and button
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'isi form untuk mengajukan cuti ya',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow
                                  .visible, // Atur overflow ke visible agar teks melebihi batas tetap ditampilkan
                              maxLines: 2, // Atur maksimal 2 baris untuk teks
                            ),
                          ),

                          SizedBox(
                              height: 20), // Spacer between text and button
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your button functionality here
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Atur nilai border radius sesuai keinginan
                                  ),
                                  // Atur warna background button di sini jika diperlukan
                                ),
                                child: Text(
                                  'Ajukan Cuti',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 172, 63,
                                        187), // Atur warna teks menjadi hitam
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10), // Spacer at the end
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
