import 'package:flutter/material.dart';

class ContainerHomeAluno extends StatelessWidget {
  const ContainerHomeAluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
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
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 13,
                          left: 25,
                        ),
                        height: 100,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(234, 231, 231, 1.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "00.0",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Classificação",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Text(
                "Atualizar Dados",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                padding: EdgeInsets.only(left: 27),
                height: 30,
                width: 120,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  child: Text(
                    "DADOS",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
