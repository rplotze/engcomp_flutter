// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent.shade100,
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}
