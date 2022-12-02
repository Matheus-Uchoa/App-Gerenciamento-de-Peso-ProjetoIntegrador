import 'package:flutter/material.dart';

class ContainerAlunosInstrutor extends StatelessWidget {
  const ContainerAlunosInstrutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 200,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 150,
                    color: Color.fromRGBO(203, 195, 195, 1.0),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Nome do aluno", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            
            SizedBox(
              width: 20,
            ),

          ]),

    );
  }
}
