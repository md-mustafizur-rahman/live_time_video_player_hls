import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{
          LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
        },
        child: MaterialApp(
            title: 'Flutter Android TV',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                brightness: Brightness.dark,
                focusColor: const Color(0xffdc143c)
            ),
            debugShowCheckedModeBanner: false,
            home: home()));
  }
}
