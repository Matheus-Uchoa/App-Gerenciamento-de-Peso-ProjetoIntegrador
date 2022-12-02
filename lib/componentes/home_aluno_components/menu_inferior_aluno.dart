import 'package:flutter/material.dart';
import 'package:meuapp/componentes/home_aluno_components/HomeScreen.dart';
import 'package:meuapp/pages/home_aluno.dart';
import 'package:flutter/src/material/icons.dart';

class MenuInferior extends State<HomeScreen> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    HomeAluno(),
    //Adicionar aqui em sequencia as Telas de chat e perfil do aluno
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _telas[_indiceAtual],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
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
