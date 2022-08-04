import 'package:flutter/material.dart';
import 'package:untitled4/betterplayer.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Player(url: "https://sc.id-tv.kz/1hd.m3u8",)),
          );
        },
      child: Text("play"),)
    );
  }
}
