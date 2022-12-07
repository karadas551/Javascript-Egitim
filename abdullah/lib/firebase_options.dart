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
    apiKey: 'AIzaSyCSJENsFPhOG81S_XA4ZBUacbjVENgrClY',
    appId: '1:897600442957:web:79b924bb148f011cb2c204',
    messagingSenderId: '897600442957',
    projectId: 'abdullah-fb151',
    authDomain: 'abdullah-fb151.firebaseapp.com',
    storageBucket: 'abdullah-fb151.appspot.com',
    measurementId: 'G-S9X5W2WLFX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_OWNK2uBY_c1o745REu8mLtCX_K_DaWA',
    appId: '1:897600442957:android:a9fbd84a77275ee3b2c204',
    messagingSenderId: '897600442957',
    projectId: 'abdullah-fb151',
    storageBucket: 'abdullah-fb151.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsQ6eLsVJRtJBWVPeTQLCOBishMwejeZA',
    appId: '1:897600442957:ios:233f9fd031d1d5a3b2c204',
    messagingSenderId: '897600442957',
    projectId: 'abdullah-fb151',
    storageBucket: 'abdullah-fb151.appspot.com',
    iosClientId: '897600442957-37o1k0ebhdkaa9ic32bnvuhe8ar931ee.apps.googleusercontent.com',
    iosBundleId: 'com.example.abdullah',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsQ6eLsVJRtJBWVPeTQLCOBishMwejeZA',
    appId: '1:897600442957:ios:233f9fd031d1d5a3b2c204',
    messagingSenderId: '897600442957',
    projectId: 'abdullah-fb151',
    storageBucket: 'abdullah-fb151.appspot.com',
    iosClientId: '897600442957-37o1k0ebhdkaa9ic32bnvuhe8ar931ee.apps.googleusercontent.com',
    iosBundleId: 'com.example.abdullah',
  );
}