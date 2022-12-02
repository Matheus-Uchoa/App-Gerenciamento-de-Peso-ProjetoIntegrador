// ignore_for_file: prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import './calculo_imc.dart';
//import 'package:principal/calculoimc.dart';

class TelaResultadoImc extends StatefulWidget {
  const TelaResultadoImc({super.key});

  @override
  State<TelaResultadoImc> createState() => _TelaResultadoImcState();
}

String resultadoimc = '';

void calcularImc() {
  num numAux = (num.parse(controllerPeso.text) /
      (num.parse(controllerAltura.text) * num.parse(controllerAltura.text)));

  resultadoimc = numAux.toStringAsFixed(2);
}

class _TelaResultadoImcState extends State<TelaResultadoImc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            reverse: true,
            child: Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(40),
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Resultado',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          height: 3),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 90),
                    // ignore: prefer_const_constructors
                    Center(
                        child: const Text(
                      'Seu IMC é',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )),

                    Center(
                      child: Text(
                        resultadoimc,
                        style: const TextStyle(
                            fontSize: 70, fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(height: 10),
                    const Center(
                        child: Text('Classificação',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))),
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                        child: Text('Magreza: Menor que 18.5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17))),
                    const Center(
                        child: Text('Normal: 18.5 - 24.9',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17))),
                    const Center(
                        child: Text('Sobrepeso: 24.9 - 30',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17))),
                    const Center(
                        child: Text('Obesidade: Maior que 30',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17))),
                    Container(
                        //margin: (EdgeInsets.only(top: 400)),
                        margin: EdgeInsets.only(top: 110),
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 160, 7, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: TextButton(
                            child: Center(
                                child: Text(
                              "SALVAR RESULTADO",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            onPressed: () {
                              informacoes();
                            }))
                  ],
                )))));
  }

  void informacoes() {
    print(resultadoimc);
    print(sexo);
  }
}
