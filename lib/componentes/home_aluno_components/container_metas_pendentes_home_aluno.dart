import 'package:flutter/material.dart';

class ContainerMetas extends StatelessWidget {
  const ContainerMetas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(),
      height: 200,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              width: 200,
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
                  Text(
                    "Nome da meta",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Por Professor",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Descrição da \nmeta a ser\ncumprida"),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Data 00/00/0000",
                        style: TextStyle(fontSize: 10),
                      ),

                    ],
                  )
                ],
              )),
        SizedBox(width: 20,)],
      ),
    );
  }
}

