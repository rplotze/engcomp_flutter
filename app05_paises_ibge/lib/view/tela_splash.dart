// ignore_for_file: prefer_const_constructors

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'tela_principal.dart';

class TelaSplash extends StatelessWidget {
  const TelaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/The_Earth_seen_from_Apollo_17_with_transparent_background.png/603px-The_Earth_seen_from_Apollo_17_with_transparent_background.png',
      ),
      logoWidth: 120,
      title: Text('IBGE - Países'),
      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: Text('Carregando...'),
      durationInSeconds: 5,
      navigator: TelaPrincipal(),
    );
  }
}
