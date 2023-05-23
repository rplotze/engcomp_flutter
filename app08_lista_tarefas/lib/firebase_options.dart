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
    apiKey: 'AIzaSyAZuaXQBV0wuIASHew8uCAEi6EeUhyTSaw',
    appId: '1:722820801085:web:b8ce6c56093879ffc6c054',
    messagingSenderId: '722820801085',
    projectId: 'app-lista-tarefas-engcomp',
    authDomain: 'app-lista-tarefas-engcomp.firebaseapp.com',
    storageBucket: 'app-lista-tarefas-engcomp.appspot.com',
    measurementId: 'G-P68JPZVKT2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFQyX3ERNlUAps2iP2NCUhZx5wG0-1rqo',
    appId: '1:722820801085:android:f4917da05d8353bcc6c054',
    messagingSenderId: '722820801085',
    projectId: 'app-lista-tarefas-engcomp',
    storageBucket: 'app-lista-tarefas-engcomp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdEcBBGySTqvq1swtPP4x2heZVfni6VDo',
    appId: '1:722820801085:ios:647d631dcd041c03c6c054',
    messagingSenderId: '722820801085',
    projectId: 'app-lista-tarefas-engcomp',
    storageBucket: 'app-lista-tarefas-engcomp.appspot.com',
    iosClientId: '722820801085-5r4ubj9s5357e3eg7714hdd4reg4bgu4.apps.googleusercontent.com',
    iosBundleId: 'com.example.app08ListaTarefas',
  );
}
