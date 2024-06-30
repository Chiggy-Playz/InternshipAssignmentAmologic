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
    apiKey: 'AIzaSyDcWQfimU7fLbscUbsZxE0YEX1Wb-PnJDo',
    appId: '1:993270945828:web:304c23daf23e85b93ea0b1',
    messagingSenderId: '993270945828',
    projectId: 'internshipamologic',
    authDomain: 'internshipamologic.firebaseapp.com',
    storageBucket: 'internshipamologic.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOHNHzX1vWrzWZxCfoGjVMeHGIOvSLs98',
    appId: '1:993270945828:android:447f8f59b1a45d693ea0b1',
    messagingSenderId: '993270945828',
    projectId: 'internshipamologic',
    storageBucket: 'internshipamologic.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCV3dVtZbeumYKl-MxtshtiiQD_0OUctdk',
    appId: '1:993270945828:ios:f28a11632fcee2cc3ea0b1',
    messagingSenderId: '993270945828',
    projectId: 'internshipamologic',
    storageBucket: 'internshipamologic.appspot.com',
    androidClientId: '993270945828-pimaev623tc617hoibbce33jd6mld5ru.apps.googleusercontent.com',
    iosClientId: '993270945828-rqpdde5r1u66s17u4809tamq6k3hqofs.apps.googleusercontent.com',
    iosBundleId: 'com.chiggy.internships.amologic',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCV3dVtZbeumYKl-MxtshtiiQD_0OUctdk',
    appId: '1:993270945828:ios:c531cb2486d9a87b3ea0b1',
    messagingSenderId: '993270945828',
    projectId: 'internshipamologic',
    storageBucket: 'internshipamologic.appspot.com',
    androidClientId: '993270945828-pimaev623tc617hoibbce33jd6mld5ru.apps.googleusercontent.com',
    iosClientId: '993270945828-ka920ot354bqq5rucsja2ehbkm3q83bj.apps.googleusercontent.com',
    iosBundleId: 'com.example.amologicAssignment',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDcWQfimU7fLbscUbsZxE0YEX1Wb-PnJDo',
    appId: '1:993270945828:web:e81ea33f6e7601543ea0b1',
    messagingSenderId: '993270945828',
    projectId: 'internshipamologic',
    authDomain: 'internshipamologic.firebaseapp.com',
    storageBucket: 'internshipamologic.appspot.com',
  );

}