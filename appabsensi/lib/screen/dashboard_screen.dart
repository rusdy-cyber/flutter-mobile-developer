import 'package:flutter/material.dart';
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
                  onTap: () {},
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
              onPressed: () {},
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
          ],
        ),
      )),
    );
  }
}
