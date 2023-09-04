// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyCB4VOi6qEkq3CyDFN1kwMok9XgwR_UI_s',
    appId: '1:562225696942:web:453c36724a424771e65d3f',
    messagingSenderId: '562225696942',
    projectId: 'hackathon-80644',
    authDomain: 'hackathon-80644.firebaseapp.com',
    storageBucket: 'hackathon-80644.appspot.com',
    measurementId: 'G-490DBCW02B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAv9QHsKB2U4B7vh4Fyg1oWESd7nLvJ2BE',
    appId: '1:562225696942:android:d7ffdc7bea8a7480e65d3f',
    messagingSenderId: '562225696942',
    projectId: 'hackathon-80644',
    storageBucket: 'hackathon-80644.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1G_Gxq1tTklRbcGn5Jd22QM470Tn2D8I',
    appId: '1:562225696942:ios:48802c735f30a54ae65d3f',
    messagingSenderId: '562225696942',
    projectId: 'hackathon-80644',
    storageBucket: 'hackathon-80644.appspot.com',
    iosClientId: '562225696942-bs3aaqqhedt4fmr8ud0annif5j3rvi0l.apps.googleusercontent.com',
    iosBundleId: 'com.example.hackathon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA1G_Gxq1tTklRbcGn5Jd22QM470Tn2D8I',
    appId: '1:562225696942:ios:48802c735f30a54ae65d3f',
    messagingSenderId: '562225696942',
    projectId: 'hackathon-80644',
    storageBucket: 'hackathon-80644.appspot.com',
    iosClientId: '562225696942-bs3aaqqhedt4fmr8ud0annif5j3rvi0l.apps.googleusercontent.com',
    iosBundleId: 'com.example.hackathon',
  );
}
