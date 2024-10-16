import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nasa_challenge/firebase_options.dart';
import 'package:nasa_challenge/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(const nasa_challenge());
}

class nasa_challenge extends StatefulWidget {
  const nasa_challenge({super.key});

  @override
  State<nasa_challenge> createState() => _nasa_challengeState();
}

class _nasa_challengeState extends State<nasa_challenge> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screan(),
    );
  }
}
