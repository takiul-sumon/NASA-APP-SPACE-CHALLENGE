import 'package:flutter/material.dart';
import 'package:nasa_challenge/login/colors.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringColor("378B29"),
            hexStringColor("74D680"),
            // hexStringColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * .2, 20, 0),
            child: Column(
              children: [logoWidget('assets/animation/agroai.png')],
            ),
          ),
        ),
      ),
    );
  }
}

Image logoWidget(String imagename) {
  return Image.asset(imagename,
  fit: BoxFit.fitWidth,
  width: 240,height: 240,color: Colors.white,);
}
