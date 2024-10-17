import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nasa_challenge/login/reusablewidget.dart';
import './colors.dart';
import './signin.dart';

class SignupScrean extends StatefulWidget {
  const SignupScrean({super.key});

  @override
  State<SignupScrean> createState() => _SignupScreanState();
}

class _SignupScreanState extends State<SignupScrean> {
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringColor("378B29"),
            hexStringColor("74D680"),
            // hexStringColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
               
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(height: 30,),
                resuabletextfield("Enter Username", Icons.supervised_user_circle,
                    false, _usernamecontroller),
                SizedBox(
                  height: 30,
                ),
                resuabletextfield(
                    "Enter Email Id", Icons.email, false, _emailcontroller),
                SizedBox(
                  height: 30,
                ),
                resuabletextfield(
                    "Enter Password", Icons.password, true, _passwordcontroller),
                    SizedBox(height: 30,),
                    signinSignupButton(context, false, () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailcontroller.text,
                          password: _passwordcontroller.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin()));
                  }).onError((error, stackTrace) {
                    print("Create An Account");
                  });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
