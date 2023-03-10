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
    apiKey: 'AIzaSyBYJ_xvz4KbyOC50KOGO1bmnIRe-uQfLR0',
    appId: '1:292188156973:web:0613d7a8216cd3f9ebf4a4',
    messagingSenderId: '292188156973',
    projectId: 'chatrooms-1dc4c',
    authDomain: 'chatrooms-1dc4c.firebaseapp.com',
    storageBucket: 'chatrooms-1dc4c.appspot.com',
    measurementId: 'G-KCHL9XLVCW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhMm7cYA1nOnFq4fwR4g2HP74TTqKL-WE',
    appId: '1:292188156973:android:47ef1bc0177ddec8ebf4a4',
    messagingSenderId: '292188156973',
    projectId: 'chatrooms-1dc4c',
    storageBucket: 'chatrooms-1dc4c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAlMBQgdw5wd_8zZt7dZYv6F69mI4KsM-0',
    appId: '1:292188156973:ios:34cf91062caa893aebf4a4',
    messagingSenderId: '292188156973',
    projectId: 'chatrooms-1dc4c',
    storageBucket: 'chatrooms-1dc4c.appspot.com',
    iosClientId: '292188156973-jjtutmt7800gru5248g6gdk57sr25qsr.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatroomsApp',
  );
}
