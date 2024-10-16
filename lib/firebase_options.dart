// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDs2DxikISca__LNOKcIF2wCwiyfBHyvWw',
    appId: '1:994057046118:web:d4f6819b8a31f5da4905a7',
    messagingSenderId: '994057046118',
    projectId: 'signin-1caf3',
    authDomain: 'signin-1caf3.firebaseapp.com',
    storageBucket: 'signin-1caf3.appspot.com',
    measurementId: 'G-J0YYZ5L3D0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpUbsz1M7rEfsIgaSUV6GGx70jZfQrQUc',
    appId: '1:994057046118:android:2f87d7d3fa6c7b5b4905a7',
    messagingSenderId: '994057046118',
    projectId: 'signin-1caf3',
    storageBucket: 'signin-1caf3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9fl_lfU11Txn88DvLNraO-GXQLoVpawI',
    appId: '1:994057046118:ios:493db30a75cc5add4905a7',
    messagingSenderId: '994057046118',
    projectId: 'signin-1caf3',
    storageBucket: 'signin-1caf3.appspot.com',
    iosBundleId: 'com.example.nasaChallenge',
  );
}