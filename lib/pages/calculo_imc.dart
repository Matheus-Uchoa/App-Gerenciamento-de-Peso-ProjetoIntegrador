// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'TelaResultadoImc.dart';

TextEditingController controllerPeso = TextEditingController();
TextEditingController controllerAltura = TextEditingController();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                  Text(
                    'Calcular IMC',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        height: 3),
                    textAlign: TextAlign.center,
                  ),
                  Text('Calcule para descrobir se você está no seu peso ideal',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      textAlign: TextAlign.center),
                  Text('      Gênero',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 2),
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              sexo = homem;
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/homi.png',
                                height: 150,
                                alignment: Alignment.centerLeft,
                              ),
                            )),
                        // SizedBox(width: 60, height: 10),
                        GestureDetector(
                            onTap: () {
                              sexo = mulher;
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/muie.png',
                                height: 150,
                                alignment: Alignment.centerLeft,
                              ),
                            ))
                      ]),
                  Row(
                    children: [
                      SizedBox(width: 55, height: 10),
                      Text('Homem',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 2)),
                       SizedBox(width: 100, height: 10),
                      Text(
                        'Mulher',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 2),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                  Text('Dados',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 2)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                              ),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: controllerPeso,
                                  decoration: InputDecoration(
                                      labelText: 'Peso',
                                      hintText: 'Digite seu peso',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))))),
                            )),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                              ),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: controllerAltura,
                                  decoration: InputDecoration(
                                      labelText: 'Altura',
                                      hintText: 'Digite sua altura',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))))),
                            )),
                      ),
                    ],
                  ),
                  Container(
                      //margin: (EdgeInsets.only(top: 400)),
                      margin: EdgeInsets.only(top: 119),
                      padding: EdgeInsets.symmetric(horizontal: 90),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 160, 7, 1),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: TextButton(
                          child: Center(
                              child: Text(
                            "CALCULAR",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TelaResultadoImc(),
                            ));
                          }))
                ]))),
      ),
    );
  }
}

const selecaodosexo = Color.fromARGB(244, 140, 131, 131);
String homem = 'homem';
String mulher = 'mulher';
String sexo = '';
