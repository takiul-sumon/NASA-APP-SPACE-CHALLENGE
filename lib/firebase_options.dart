import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseService{
Signup({required String emailaddress,required String password,context})
async{
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailaddress,
    password: password,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}}
}