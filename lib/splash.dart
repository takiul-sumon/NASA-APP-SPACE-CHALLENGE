import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:nasa_challenge/login/signin.dart';



class splash_screan extends StatefulWidget {
  const splash_screan({super.key});

  @override
  State<splash_screan> createState() => _splash_screanState();
}

class _splash_screanState extends State<splash_screan> {
  

  @override
  Widget build(BuildContext context) {
      return AnimatedSplashScreen(
          splash: Container(
          
            child: Center(
              child: Lottie.asset(
                  'assets/animation/Flow 1.json'),
            ),
          ),
          nextScreen: Signin(),
          splashIconSize: double.infinity,backgroundColor: Colors.transparent,
          duration: 750,
    );

  }}