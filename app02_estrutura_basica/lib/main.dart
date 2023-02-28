// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  //Iniciar a execução do App
  runApp(
    //Definir o uso Material Design
    MaterialApp(
      title: 'Hello Flutter',

      //Indicar a tela que será exibida inicialmente
      home: TelaPrincipal(),
    ),
  );
}

//
// TELA PRINCIPAL
// stl+TAB
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra de Título
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.android, size: 60),
          Text('Hello Flutter!'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.computer, size: 60),
              Text(
                'Engenharia da Computação',
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
          Text('UNAERP'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('R')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Center(child: Text('G')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text('B')),
              ),
            ],
          ),
        ],
      ),

      /*body: Center(
        child: Text('Hello Flutter!'),
      ),*/

      //Botão Flutuante
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
        onPressed: () {
          print('botão pressionado!');
        },
      ),
    );
  }
}
