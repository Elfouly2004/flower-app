
import 'package:flower/features/Slider/Splashscreen.dart';
import 'package:flower/features/home/home%20screen.dart';

import 'package:flutter/material.dart';

void main( ){
  runApp(Flowerapp());
}


class Flowerapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}