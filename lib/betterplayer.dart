import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  Player({Key? key, required this.url}) : super(key: key);
  final String url;
  //final value= "https://bd.jagobd.com:444/c2VydmVyX4RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI/channeli-8-org.stream/live-orgin/channeli-8-org.stream/chunks.m3u8";

  var betterPlayerConfiguration = const BetterPlayerConfiguration(
    controlsConfiguration: BetterPlayerControlsConfiguration(
      textColor: Colors.white,
      iconsColor: Colors.white,
      enableFullscreen: true,
      enableQualities: true,
      enableSubtitles: false,
      enablePlayPause: true,
      loadingWidget: SizedBox(
          width: 100,
          child: Center(child: CircularProgressIndicator(),)),
      showControlsOnInitialize: true,
      showControls: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: SafeArea(
        child: BetterPlayer.network(url,
            betterPlayerConfiguration: betterPlayerConfiguration),
      ),
    );
  }
}
