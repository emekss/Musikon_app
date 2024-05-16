import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musikon_app/screens/monday_recommendation_screen/components/custom_bottom_navbar.dart';
import 'package:musikon_app/screens/monday_recommendation_screen/components/music_colum.dart';

class MondayRecommendationScreen extends StatelessWidget {
  const MondayRecommendationScreen({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'RadioScreen');
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset('assets/images/userprofile.png')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/play_button.png'),
                              Row(
                                children: [
                                  Image.asset('assets/images/share.png'),
                                  const SizedBox(width: 10),
                                  Image.asset('assets/images/playlist.png'),
                                  const SizedBox(width: 10),
                                  Image.asset('assets/images/shuffle.png'),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              Text(
                                'Monday Playlist',
                                style: GoogleFonts.inter(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset('assets/images/like.png'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Risus pretium velit amet vel tincidunt.',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const MusicColumn(),
                          const SizedBox(height: 20),
                        ],
                      ),
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
