import 'package:meuapp/componentes/home_instrutor_components/home_screen_instrutor.dart';
import 'package:flutter/material.dart';
import 'package:meuapp/pages/home_instrutor.dart';

class MenuInferiorInstrutor extends State<HomeScreenInstrutor> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    HomeInstrutor(),
    //Adicionar aqui em sequencia as Telas de chat, nova meta e perfil do instrutor
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
