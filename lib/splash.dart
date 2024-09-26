import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import './home_screan.dart';

class splash_screan extends StatelessWidget {
  const splash_screan({super.key});

  @override
  Widget build(BuildContext context) {
    //   return AnimatedSplashScreen(
    //       splash: Container(
    //         height: 300,
    //         width: 400,
    //         child: Center(
    //           child: Lottie.asset(
    //               'assets/animation/75.json'),
    //         ),
    //       ),
    //       nextScreen: Home_Screan(),
    //       splashIconSize: double.infinity,backgroundColor: Colors.transparent,
    //       duration: 5000,
    // );
    return AnimatedSplashScreen(splash: Image.asset("assets/animation/agroai.png",
        
    
    fit: BoxFit.contain,
    ),nextScreen: Home_Screan(),);
  }
}
