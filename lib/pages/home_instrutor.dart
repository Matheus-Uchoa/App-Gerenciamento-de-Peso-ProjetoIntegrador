import 'package:flutter/material.dart';
import 'package:meuapp/componentes/home_instrutor_components/container_alunos_instrutor.dart';
import '../componentes/home_instrutor_components/container_metas_pendentes_home_instrutor.dart';

class HomeInstrutor extends StatelessWidget {
  const HomeInstrutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 10,
          right: 10,
        ),
        child: ListView(
          children: <Widget>[
            Text(
              "HOME",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Olá, Instrutor",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Seja bem-vindo",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Metas Pendentes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ContainerMetasInstrutor();
                },
              ),
            ),
            SizedBox(height: 20,),
            
            Text("Alunos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ContainerAlunosInstrutor();
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(onPressed: (){}, child: Text("Lista completa de alunos", style: TextStyle(color: Colors.black),)),
              ],)

          ],
        ),
      ),
    );
  }
}
