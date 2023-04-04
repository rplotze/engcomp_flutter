// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'view/principal_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TabBar',
      home: PrincipalView(),
    ),
  );
}
