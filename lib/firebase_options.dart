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
    apiKey: 'AIzaSyA_dT65cd2cD2B0SBgeUCdOoGlUHdRA8QM',
    appId: '1:443578174398:web:41e0c102ebbae5a574c7ef',
    messagingSenderId: '443578174398',
    projectId: 'milkkart-26178',
    authDomain: 'milkkart-26178.firebaseapp.com',
    storageBucket: 'milkkart-26178.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJgq1giUtHgt8IKiXbFQteyCls28Mz2Po',
    appId: '1:443578174398:android:0ab89e93efbe559974c7ef',
    messagingSenderId: '443578174398',
    projectId: 'milkkart-26178',
    storageBucket: 'milkkart-26178.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmRYph78L3OsEKkIoBwDGY2-D_FGnGRWU',
    appId: '1:443578174398:ios:349e122c2cf973ed74c7ef',
    messagingSenderId: '443578174398',
    projectId: 'milkkart-26178',
    storageBucket: 'milkkart-26178.appspot.com',
    iosBundleId: 'com.example.milkmart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmRYph78L3OsEKkIoBwDGY2-D_FGnGRWU',
    appId: '1:443578174398:ios:659a87a31d8aeda774c7ef',
    messagingSenderId: '443578174398',
    projectId: 'milkkart-26178',
    storageBucket: 'milkkart-26178.appspot.com',
    iosBundleId: 'com.example.milkmart.RunnerTests',
  );
}
