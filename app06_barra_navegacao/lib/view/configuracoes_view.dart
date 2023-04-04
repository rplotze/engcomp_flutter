// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ConfigurarView extends StatelessWidget {
  const ConfigurarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent.shade100,
      child: Center(
        child: Text('Configurações'),
      ),
    );
  }
}
