// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NotificarView extends StatelessWidget {
  const NotificarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent.shade100,
      child: Center(
        child: Text('Notificações'),
      ),
    );
  }
}
