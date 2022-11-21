import 'package:flutter/material.dart';
import 'package:meuapp/pages/login.dart';
import 'package:meuapp/pages/login_gerente.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.orange,
                        Colors.deepOrange,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ))),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "NOME DO APP\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 40),
                      ),
                      TextSpan(
                        text: "Seja Bem-vindo",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.orange),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 40,
                          ),
                          Text("ENTRAR",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(
                            width: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Container(
                      child: Row(
                    children: <Widget>[
                      Text("Você é gerente?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginGerente()));
                          },
                          child: Text("Entrar")),
                    ],
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
