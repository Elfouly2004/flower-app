import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flower/features/Slider/model&veiw%20slider/Custom%20Slider.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds: 1,
    ),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return Sliderpage();
        },));
      },
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Image(
            image:AssetImage("assets/images/splash 1.png"),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),


    );

  }
}