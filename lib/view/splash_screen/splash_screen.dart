import 'dart:async';

import 'package:flutter/material.dart';

import 'package:note_app/view/note_screen/note_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const NoteScreen(),
          ));
    });
    return const Scaffold(
      body: Center(
          child: SizedBox(
        height: 100,
        width: 100,
        child: Image(
          image: NetworkImage(
              'https://i.pinimg.com/474x/a8/ec/2f/a8ec2ff4330e2f04e0b9f9a23a1ea740.jpg'),
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
