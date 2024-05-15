import 'package:flutter/material.dart';
import 'package:musikon_app/screens/radio_station_screen.dart/components/radio_container.dart';

class RadioStation extends StatelessWidget {
  const RadioStation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RadioContainer(
              image: 'assets/images/radio1.png',
              radioChannel: 'Radio - F',
              radioName: 'Mirchi 90\'S',
            ),
            RadioContainer(
              image: 'assets/images/radio2.png',
              radioChannel: 'Radio - J',
              radioName: 'Danny 80\'S',
            ),
            RadioContainer(
              image: 'assets/images/radio3.png',
              radioChannel: 'Radio - M',
              radioName: 'Punjabi',
            ),
          ],
        ),
      ],
    );
  }
}
