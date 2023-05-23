// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../model/contato.dart';

//
// STATEFUL (stf+TAB)
//
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  //Declaração dos Atributos
  List<Contato> lista = [];
  var index;
  var txtNome = TextEditingController();
  var txtTelefone = TextEditingController();

  @override
  void initState() {
    index = -1;
    lista.add(Contato('João da Silva', '(11) 2222-3333'));
    lista.add(Contato('Ana Maria', '(22) 4444-5555'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: Text('Gerenciador de Contatos'),
        backgroundColor: Colors.indigoAccent.shade700,
      ),
      //CORPO
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: adicionar(),
          ),
          Expanded(
            flex: 2,
            child: listar(),
          ),
        ],
      ),
      persistentFooterButtons: [
        Text('Total de Contatos: ${lista.length.toString()}'),
      ],
    );
  }

  // ADICIONAR CONTATOS
  adicionar() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey.shade50,
        child: Column(
          children: [
            TextField(
              controller: txtNome,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Nome',
                labelStyle: TextStyle(fontSize: 12),
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: txtTelefone,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Telefone',
                labelStyle: TextStyle(fontSize: 12),
                icon: Icon(Icons.smartphone),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //EVENTO DE PRESSIONAMENTO DO BOTÃO
                if (txtNome.text.isNotEmpty && txtTelefone.text.isNotEmpty) {
                  //ALTERAÇÃO DO ESTADO DA LISTA

                  if (index == -1) {
                    //Adicionar um novo contato
                    setState(() {
                      lista.add(Contato(txtNome.text, txtTelefone.text));
                    });
                    mensagem(
                      'Contato adicionado com sucesso.',
                      Colors.blueAccent.shade100,
                    );
                  } else {
                    //Alterar um contato existente
                    setState(() {
                      lista[index] = Contato(
                        txtNome.text,
                        txtTelefone.text,
                      );
                      index = -1;
                    });
                    mensagem(
                      'Contato alterado com sucesso.',
                      Colors.blueAccent.shade100,
                    );
                  }

                  txtNome.clear();
                  txtTelefone.clear();
                } else {
                  mensagem(
                    'Os campos nome e telefone não podem ser vazios.',
                    Colors.redAccent.shade100,
                  );
                }
              },
              child: Text('salvar'),
            ),
          ],
        ),
      ),
    );
  }

  //LISTAR CONTATOS
  listar() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.contact_phone_outlined),
              title: Text(lista[index].nome),
              subtitle: Text(lista[index].telefone),
              trailing: IconButton(
                icon: Icon(Icons.delete_outline),
                onPressed: () {
                  setState(() {
                    lista.removeAt(index);
                  });
                  mensagem(
                    'Contato removido com sucesso.',
                    Colors.blueAccent.shade100,
                  );
                },
              ),
              onTap: () {
                setState(() {
                  this.index = index;
                  txtNome.text = lista[index].nome;
                  txtTelefone.text = lista[index].telefone;
                });
              },
              tileColor: (this.index == index)
                  ? Colors.blueAccent.shade100.withOpacity(0.2)
                  : Colors.white,
            ),
          );
        },
      ),
    );
  }

  //Exibir Mensagem
  mensagem(msg, cor) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        //: TextAlign.center,
      ),
      duration: Duration(seconds: 2),
      backgroundColor: cor,
    ));
  }
}
