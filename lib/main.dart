import 'package:flutter/material.dart';
import 'package:japaneasy/Screens/splashScreen.dart';

void main() {
  runApp(const Japaneasy());
}

class Japaneasy extends StatelessWidget {
  const Japaneasy({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
