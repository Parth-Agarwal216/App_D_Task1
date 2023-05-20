import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itsme/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
  Note: Use MaterialApp Widget once in the entire app and sacffold widget once in every screen, not more than that
  */

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}
