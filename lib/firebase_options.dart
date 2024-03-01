// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';

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
    apiKey: 'AIzaSyBc_aMPTOWVKG4DoODqb5PDM5fupHywmPw',
    appId: '1:967626370967:web:990b8af2a2b7130b275ed2',
    messagingSenderId: '967626370967',
    projectId: 'healthy-care-system',
    authDomain: 'healthy-care-system.firebaseapp.com',
    storageBucket: 'healthy-care-system.appspot.com',
    measurementId: 'G-EN62HT2KK3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSyjQdO9WzAhfa67zV9OZl93ZsoG3b4w8',
    appId: '1:967626370967:android:1373db85b18934cd275ed2',
    messagingSenderId: '967626370967',
    projectId: 'healthy-care-system',
    storageBucket: 'healthy-care-system.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWCJw0aPU9vUpQQgFVfid1Ki3ktip20fA',
    appId: '1:967626370967:ios:092a68afa3ac877f275ed2',
    messagingSenderId: '967626370967',
    projectId: 'healthy-care-system',
    storageBucket: 'healthy-care-system.appspot.com',
    iosBundleId: 'com.example.graduat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWCJw0aPU9vUpQQgFVfid1Ki3ktip20fA',
    appId: '1:967626370967:ios:1e7b36e772985a74275ed2',
    messagingSenderId: '967626370967',
    projectId: 'healthy-care-system',
    storageBucket: 'healthy-care-system.appspot.com',
    iosBundleId: 'com.example.graduat.RunnerTests',
  );
}
