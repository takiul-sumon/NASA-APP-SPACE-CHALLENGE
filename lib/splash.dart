import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_challenge/login/signin.dart';
import './home_screan.dart';

class splash_screan extends StatefulWidget {
  const splash_screan({super.key});

  @override
  State<splash_screan> createState() => _splash_screanState();
}

class _splash_screanState extends State<splash_screan> {
  
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
        Signin()
      ,));
    });
  }
  
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
    return Scaffold(
      body: Container(
      child:  Column(
        mainAxisAlignment: 
        MainAxisAlignment.center,children: [

      // AnimatedSplashScreen(
      //     splash: Center(
      //       child: Lottie.asset(
      //           'assets/animation/75.json'),
      //     ),
      //     nextScreen: Home_Screan(),
      //     backgroundColor: Colors.transparent,
      //     duration: 5000,

      // ),
      Image.asset("assets/animation/agroai.png")],),)
    
      
    );
  }
}
