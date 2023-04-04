// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PesquisarView extends StatelessWidget {
  const PesquisarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent.shade100,
      child: Center(
        child: Text('Pesquisar'),
      ),
    );
  }
}
