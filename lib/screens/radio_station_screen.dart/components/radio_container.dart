import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioContainer extends StatelessWidget {
  final String image;
  final String radioName;
  final String radioChannel;
  const RadioContainer({
    super.key,
    required this.image,
    required this.radioChannel,
    required this.radioName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          radioName,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
        Text(
          radioChannel,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
