import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musikon_app/screens/monday_recommendation_screen/components/custom_bottom_navbar.dart';
import 'package:musikon_app/screens/radio_station_screen.dart/components/radio_station.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 9, 0, 47),
                Color.fromARGB(255, 60, 0, 81),
                Colors.black
              ]),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/bi_search.png'),
                          Image.asset('assets/images/userprofile.png')
                        ],
                      ),
                      Text(
                        'Radio Station',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const RadioStation(),
                      const SizedBox(height: 20),
                      const RadioStation(),
                      const SizedBox(height: 20),
                      const RadioStation(),
                      const SizedBox(height: 20),
                      const RadioStation(),
                    ],
                  ),
                ),
                const CustomBottomNavBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
