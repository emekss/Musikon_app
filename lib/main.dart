import 'package:flutter/material.dart';
import 'package:musikon_app/screens/monday_recommendation_screen/monday_recommendation_screen.dart';
import 'package:musikon_app/screens/radio_station_screen.dart/radio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioScreen(),
      routes: {
        'RadioScreen': (context) => const RadioScreen(),
        'MondayRecommendationScreen': (context) =>
            const MondayRecommendationScreen(),
      },
    );
  }
}
