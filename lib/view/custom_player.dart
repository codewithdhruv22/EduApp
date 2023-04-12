import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CustomPlayer extends StatefulWidget {
  const CustomPlayer({super.key});

  @override
  State<CustomPlayer> createState() => _CustomPlayerState();
}

class _CustomPlayerState extends State<CustomPlayer> {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    YoutubePlayer(
      // onReady: () {
      //   _controller.addListener(listener);
      // },
      controller: _controller,
      showVideoProgressIndicator: true,
      // videoProgressIndicatorColor: Colors.amber,
      progressColors: ProgressBarColors(
        playedColor: Colors.amber,
        handleColor: Colors.amberAccent,
      ),
    );

    return Scaffold(
        body: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
            ),
            builder: (context, player) {
              return Column(
                children: [
                  // some widgets
                  player,
                  //some other widgets
                ],
              );
            }));
  }
}
