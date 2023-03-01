import 'package:flutter/material.dart';
import 'package:music_player/home_screen.dart';
import 'package:music_player/mainScreen.dart';
import 'mongodb.dart';
import 'next.dart';
import 'mainScreen.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}






