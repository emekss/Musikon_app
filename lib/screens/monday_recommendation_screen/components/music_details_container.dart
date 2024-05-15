import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicDetailsContainer extends StatelessWidget {
  final String songTitle;
  final String image;
  final String artistName;
  const MusicDetailsContainer({
    super.key,
    required this.artistName,
    required this.image,
    required this.songTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  songTitle,
                  style: GoogleFonts.inter(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Text(
                  artistName,
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
        )
      ],
    );
  }
}
