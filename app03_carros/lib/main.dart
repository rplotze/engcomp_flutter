// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'view/tela_principal.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carros',
      home: TelaPrincipal(),
    ),
  );
}

