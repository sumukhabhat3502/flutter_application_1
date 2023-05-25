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
    apiKey: 'AIzaSyBXG-bimcVVxqunjZ0YjSP6lC2ipg6NHQc',
    appId: '1:145975930295:web:657295b46ec87c8dbfcc32',
    messagingSenderId: '145975930295',
    projectId: 'ieee-f5df6',
    authDomain: 'ieee-f5df6.firebaseapp.com',
    storageBucket: 'ieee-f5df6.appspot.com',
    measurementId: 'G-2144XMG8X3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBA1JgHk91upRa4dS-wgT5JwdQykgdGwyU',
    appId: '1:145975930295:android:f35064dba9c8e758bfcc32',
    messagingSenderId: '145975930295',
    projectId: 'ieee-f5df6',
    storageBucket: 'ieee-f5df6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUlanDL320EPhAX5tj407WsbztpFXGNUQ',
    appId: '1:145975930295:ios:becdacfbd8bf37f5bfcc32',
    messagingSenderId: '145975930295',
    projectId: 'ieee-f5df6',
    storageBucket: 'ieee-f5df6.appspot.com',
    androidClientId: '145975930295-14pjevo0m2djq0b99uq8n5drbafejrgh.apps.googleusercontent.com',
    iosClientId: '145975930295-fcm45bh85moab9thbo0d6cgqkfn5bj51.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUlanDL320EPhAX5tj407WsbztpFXGNUQ',
    appId: '1:145975930295:ios:becdacfbd8bf37f5bfcc32',
    messagingSenderId: '145975930295',
    projectId: 'ieee-f5df6',
    storageBucket: 'ieee-f5df6.appspot.com',
    androidClientId: '145975930295-14pjevo0m2djq0b99uq8n5drbafejrgh.apps.googleusercontent.com',
    iosClientId: '145975930295-fcm45bh85moab9thbo0d6cgqkfn5bj51.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
