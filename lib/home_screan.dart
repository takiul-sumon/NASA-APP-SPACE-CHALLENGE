import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nasa_challenge/login/signin.dart';

class Home_Screan extends StatefulWidget {
  const Home_Screan({super.key});

  @override
  State<Home_Screan> createState() => _Home_ScreanState();
}

class _Home_ScreanState extends State<Home_Screan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then(
                (value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signin()));
                },
              );
            },
            child: Text("data")),
      ),
    );
  }
}
