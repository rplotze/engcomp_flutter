// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetCarro extends StatelessWidget {
  //Atributos
  final String marca;
  final String modelo;
  final String foto;

  const WidgetCarro(this.marca, this.modelo, this.foto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Margin = distâncias externas
      //margin: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),

      //Padding = distâncias internas
      padding: EdgeInsets.all(20),

      width: MediaQuery.of(context).size.width,
      height: 420,
      decoration: BoxDecoration(
        color: Colors.blueAccent.shade100,
        border: Border.all(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            marca,
            style: GoogleFonts.oswald(fontSize: 24),
          ),
          Text(
            modelo,
            style: GoogleFonts.oswald(fontSize: 24),
          ),
          Image.asset(
            foto,
            width: MediaQuery.of(context).size.width * 0.80,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
