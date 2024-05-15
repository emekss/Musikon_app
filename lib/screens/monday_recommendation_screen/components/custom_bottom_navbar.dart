import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 210, 210, 191),
        Color.fromARGB(255, 128, 77, 127)
      ])),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/music_button.png'),
            Image.asset('assets/images/audio.png'),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  'MondayRecommendationScreen',
                );
              },
              child: Image.asset('assets/images/home_button.png'),
            ),
            Image.asset('assets/images/podcast_button.png'),
            Image.asset('assets/images/settings_button.png'),
          ],
        ),
      ),
    );
  }
}
