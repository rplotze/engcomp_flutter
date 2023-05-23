// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'view/cadastrar_view.dart';
import 'view/login_view.dart';
import 'view/principal_view.dart';

Future<void> main() async {
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled:true,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        initialRoute: 'login',
        routes: {
          'cadastrar' : (context) => CadastrarView(),
          'login' : (context) => LoginView(),
          'principal' : (context) => PrincipalView(),
        },
      ),
    ),
  );
}
