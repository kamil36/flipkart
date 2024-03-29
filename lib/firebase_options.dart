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
    apiKey: 'AIzaSyCZ1lakUOMdSMGPy84DjWLOrTZstMde3pw',
    appId: '1:204299924059:web:cc9ce468eb8f02d3ffc57e',
    messagingSenderId: '204299924059',
    projectId: 'appchat-f3297',
    authDomain: 'appchat-f3297.firebaseapp.com',
    storageBucket: 'appchat-f3297.appspot.com',
    measurementId: 'G-X51HFPWV40',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASazNEZaurs-robT1VtZcvNCECRw_ziRw',
    appId: '1:204299924059:android:f087ccfca95bd2e4ffc57e',
    messagingSenderId: '204299924059',
    projectId: 'appchat-f3297',
    storageBucket: 'appchat-f3297.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxu7lEfOpk5lx6tW-v5FzTsptMi--3Pxw',
    appId: '1:204299924059:ios:eed77aab01a98797ffc57e',
    messagingSenderId: '204299924059',
    projectId: 'appchat-f3297',
    storageBucket: 'appchat-f3297.appspot.com',
    iosClientId: '204299924059-9h9e3rchtvfjdest4phu64coqq27p1kf.apps.googleusercontent.com',
    iosBundleId: 'com.example.flipkart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxu7lEfOpk5lx6tW-v5FzTsptMi--3Pxw',
    appId: '1:204299924059:ios:a8e56b1d884cb891ffc57e',
    messagingSenderId: '204299924059',
    projectId: 'appchat-f3297',
    storageBucket: 'appchat-f3297.appspot.com',
    iosClientId: '204299924059-483gudse01vlubuh7ten4qetpkkujur9.apps.googleusercontent.com',
    iosBundleId: 'com.example.flipkart.RunnerTests',
  );
}
