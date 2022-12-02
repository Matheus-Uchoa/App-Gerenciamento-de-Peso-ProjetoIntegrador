import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class ContainerMetasInstrutor extends StatelessWidget {
  const ContainerMetasInstrutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              width: 250,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Colors.orangeAccent,
                      Colors.orange,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.black),
                        child: Icon(
                          Icons.person,
                          size: 55,
                          color: Color.fromRGBO(203, 195, 195, 1.0),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Nome do aluno",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("00.0 Kg",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "00 anos",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Titulo da meta",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "Data 00/00/0000",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Todas as metas",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ],
              )),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
