import 'package:flutter/material.dart';
import 'package:musikon_app/screens/monday_recommendation_screen/components/music_details_container.dart';

class MusicColumn extends StatelessWidget {
  const MusicColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MusicDetailsContainer(
            image: 'assets/images/closer_music.png',
            songTitle: 'Closer',
            artistName: 'The Chainsmokers, Halsey',
          ),
          SizedBox(height: 20),
          MusicDetailsContainer(
            image: 'assets/images/shape_of_you.png',
            songTitle: 'Shape of You Song',
            artistName: 'Ed Sheeran',
          ),
          SizedBox(height: 20),
          MusicDetailsContainer(
            image: 'assets/images/let_me.png',
            songTitle: 'Let Me Love You Song',
            artistName: 'Dj Snake, Justin Bieber',
          ),
          SizedBox(height: 20),
          MusicDetailsContainer(
            image: 'assets/images/unstoppable.png',
            songTitle: 'Unstoppable',
            artistName: 'SIA',
          ),
          SizedBox(height: 20),
          MusicDetailsContainer(
            image: 'assets/images/closer_music.png',
            songTitle: 'Closer',
            artistName: 'The Chainsmokers, Halsey',
          ),
          SizedBox(height: 20),
          MusicDetailsContainer(
            image: 'assets/images/let_me.png',
            songTitle: 'Let Me Love You Song',
            artistName: 'Dj Snake, Justin Bieber',
          ),
        ],
      ),
    );
  }
}
