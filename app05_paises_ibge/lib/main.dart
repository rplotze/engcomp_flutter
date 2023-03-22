// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'view/tela_detalhes.dart';
import 'view/tela_principal.dart';
import 'view/tela_splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'IBGE',

    //
    // ROTAS DE NAVEGAÇÃO
    //
    initialRoute: 't0',
    routes: {
      't0': (context) => TelaSplash(),
      't1': (context) => TelaPrincipal(),
      't2': (context) => TelaDetalhes(),
    },
  ));
}
