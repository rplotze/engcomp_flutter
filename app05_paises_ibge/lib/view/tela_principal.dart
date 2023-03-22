// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/pais.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  //Lista dinâmica de objetos da classe PAIS
  List<Pais> dados = [];

  //Carregar os dados do arquivo JSON
  carregarDados() async {
    final String arquivo = await rootBundle.loadString('lib/data/paises.json');
    final dynamic lista = await json.decode(arquivo);
    setState(() {
      lista.forEach((item) {
        dados.add(Pais.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await carregarDados();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IBGE')),
      body: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(dados[index].nome),
                onTap: () {
                  //NAVEGAR para TelaDetalhes
                  var obj = dados[index];
                  Navigator.pushNamed(
                    context,
                    't2',
                    arguments: obj,
                  );
                },
              ),
            );
          }),
    );
  }
}
