import 'package:flutter/material.dart';

class TreinoAluno extends StatelessWidget {
  const TreinoAluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 250,
      decoration: BoxDecoration(
        color: Color.fromRGBO(250, 243, 243, 1.0),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Nome do treino",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text("Tempo"),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 170,
                ),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  height: 30,
                  width: 120,
                  alignment: Alignment.centerLeft,
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      child: Text(
                        "COMEÇAR",
                        style: TextStyle(color: Colors.black87),
                      ),
                      onPressed: () {}),
                ),
              ],
            )
          ]),
    );
  }
}
