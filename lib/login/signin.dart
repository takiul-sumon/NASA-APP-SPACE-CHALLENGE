import 'package:flutter/material.dart';
import 'package:nasa_challenge/login/colors.dart';
import './reusablewidget.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
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
              children: [
                logoWidget('assets/animation/agroai.png'),
                SizedBox(height: 30),
                resuabletextfield("Enter UserName", Icons.percent_outlined,
                    false, _emailcontroller),
                SizedBox(
                  height: 30,
                ),
                resuabletextfield("Enter Password", Icons.password_outlined,
                    true, _passwordcontroller),
                SizedBox(
                  height: 30,
                ),
                signinSignupButton(context, true, () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Row signUpOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
     const Text(
        "Don't have account",
        style: TextStyle(color: Colors.white70),
      ),
      // GestureDetector(
      //   onTap: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => Signin()
      //       ),
      //     );
      //   },
      //   child: const Text(
      //     " Sign Up",
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      // )
    ],
  );
}
