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
    apiKey: 'AIzaSyC_TYLrkmWNCUaRW-80mlIwuhztr4-cH4A',
    appId: '1:829678490881:web:f98fa1bf38d93e22e03700',
    messagingSenderId: '829678490881',
    projectId: 'listadecompras-ea610',
    authDomain: 'listadecompras-ea610.firebaseapp.com',
    storageBucket: 'listadecompras-ea610.appspot.com',
    measurementId: 'G-3CTXKQX5JT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQUQB_gf3Ltt3bGwLY1UOCtReoPKv340s',
    appId: '1:829678490881:android:1e2cb93304630bcce03700',
    messagingSenderId: '829678490881',
    projectId: 'listadecompras-ea610',
    storageBucket: 'listadecompras-ea610.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAd0gq11B7CgDafQKY3nND0nIyTgW5U9c',
    appId: '1:829678490881:ios:5abc1e96e937e05be03700',
    messagingSenderId: '829678490881',
    projectId: 'listadecompras-ea610',
    storageBucket: 'listadecompras-ea610.appspot.com',
    iosBundleId: 'com.example.listadecomprass',
  );
}
