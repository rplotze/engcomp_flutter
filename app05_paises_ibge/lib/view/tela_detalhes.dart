// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../model/pais.dart';

class TelaDetalhes extends StatefulWidget {
  const TelaDetalhes({super.key});

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  @override
  Widget build(BuildContext context) {
    //
    // Recuperar o objeto PAIS que foi passado como
    // argumento
    //
    var obj = ModalRoute.of(context)!.settings.arguments as Pais;

    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: Text('IBGE'),
        //desativar o botão voltar
        automaticallyImplyLeading: false,
      ),
      //CORPO
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome'),
            Text(obj.nome, style: TextStyle(fontSize: 20)),
            Text('Capital'),
            Text(obj.capital, style: TextStyle(fontSize: 20)),
            Text('Histórico'),
            Text(obj.historico, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      //BOTÃO FLUTUANTE
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(seconds: 3),
            content: Text('Adicionado aos favoritos.'),
          ));
          //Voltar para TelaPrincipal
          Navigator.pop(context);
        },
      ),
    );
  }
}
