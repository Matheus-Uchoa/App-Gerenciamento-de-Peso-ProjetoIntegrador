import 'package:flutter/material.dart';
import 'package:meuapp/componentes/home_aluno_components/container_treinos_aluno.dart';
import '../componentes/home_aluno_components/container_home_aluno.dart';
import '../componentes/home_aluno_components/container_metas_pendentes_home_aluno.dart';

class HomeAluno extends StatelessWidget {
  const HomeAluno({Key? key}) : super(key: key);

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
                  "Olá, Usuário",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Vamos treinar?",
                  style: TextStyle(color: Colors.blueGrey),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "IMC",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            ContainerHomeAluno(),
            SizedBox(height: 20),
            Text(
              "Metas Pendentes",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                  return ContainerMetas();
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Treinos",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            TreinoAluno(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lista completa de treinos",
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
