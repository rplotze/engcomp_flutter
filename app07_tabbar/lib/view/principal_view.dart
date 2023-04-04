// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Quantidade de TABS
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meios de Transporte'),
          bottom: criarTabBar(),
          backgroundColor: Colors.purple.shade900,
        ),
        body: TabBarView(
          children: [
            //Conteúdo do Item 1
            Container(child: Center(child: Text('Carro'))),
            //Conteúdo do Item 2
            Container(child: Center(child: Text('Bicicleta'))),
            //Conteúdo do Item 3
            Container(child: Center(child: Text('Barco'))),
            //Conteúdo do Item 4
            Container(child: Center(child: Text('Ônibus'))),
            //Conteúdo do Item 5
            Container(child: Center(child: Text('Trem'))),
          ],
        ),
      ),
    );
  }

  //
  // Criação da TabBar
  //
  TabBar criarTabBar() {
    return TabBar(
      tabs: [
        // Item 1
        Row(
          children: [
            Icon(Icons.directions_car),
            SizedBox(width: 5),
            Text('Carro'),
          ],
        ),
        // Item 2
        Row(
          children: [
            Icon(Icons.directions_bike),
            SizedBox(width: 5),
            Text('Bicicleta'),
          ],
        ),
        // Item 3
        Row(
          children: [
            Icon(Icons.directions_boat),
            SizedBox(width: 5),
            Text('Barco'),
          ],
        ),
        // Item 4
        Row(
          children: [
            Icon(Icons.directions_bus),
            SizedBox(width: 5),
            Text('Ônibus'),
          ],
        ),
        // Item 5
        Row(
          children: [
            Icon(Icons.directions_railway),
            SizedBox(width: 5),
            Text('Trem'),
          ],
        ),
      ],
      //
      // Propriedades
      //
      isScrollable: true,
      indicatorColor: Colors.amberAccent.shade100,
      indicatorWeight: 3,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white24,
    );
  }
}
