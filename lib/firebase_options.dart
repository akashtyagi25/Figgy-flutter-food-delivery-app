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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAgy6oUv6bNPMCy0ZRA7jDNl-0nLoaKES8',
    appId: '1:881957768659:web:0ed1ddb7bd77f3dc87f326',
    messagingSenderId: '881957768659',
    projectId: 'fooddelivery-114be',
    authDomain: 'fooddelivery-114be.firebaseapp.com',
    storageBucket: 'fooddelivery-114be.firebasestorage.app',
    measurementId: 'G-X3GCGPJR5F',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAv9ggW4tK_-MpFmVyM7WmBAtZVSIeDygc',
    appId: '1:881957768659:ios:88a4cc29094a9b0e87f326',
    messagingSenderId: '881957768659',
    projectId: 'fooddelivery-114be',
    storageBucket: 'fooddelivery-114be.firebasestorage.app',
    iosBundleId: 'com.example.fooddelivery',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAgy6oUv6bNPMCy0ZRA7jDNl-0nLoaKES8',
    appId: '1:881957768659:web:0848f28e3fc2e49787f326',
    messagingSenderId: '881957768659',
    projectId: 'fooddelivery-114be',
    authDomain: 'fooddelivery-114be.firebaseapp.com',
    storageBucket: 'fooddelivery-114be.firebasestorage.app',
    measurementId: 'G-5SDFY80ZKE',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAv9ggW4tK_-MpFmVyM7WmBAtZVSIeDygc',
    appId: '1:881957768659:ios:88a4cc29094a9b0e87f326',
    messagingSenderId: '881957768659',
    projectId: 'fooddelivery-114be',
    storageBucket: 'fooddelivery-114be.firebasestorage.app',
    iosBundleId: 'com.example.fooddelivery',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhimdlTjkA06OkRnnjAIPj8hZFN-rcLVY',
    appId: '1:881957768659:android:da964770818089de87f326',
    messagingSenderId: '881957768659',
    projectId: 'fooddelivery-114be',
    storageBucket: 'fooddelivery-114be.firebasestorage.app',
  );

}