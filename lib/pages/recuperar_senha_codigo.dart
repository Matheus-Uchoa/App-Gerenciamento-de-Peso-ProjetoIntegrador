import 'package:flutter/material.dart';
import 'package:meuapp/componentes/inputcodigo.dart';
import 'package:meuapp/pages/recuperar_senha_novasenha.dart';

class RecuperarSenhaCodigo extends StatelessWidget {
  const RecuperarSenhaCodigo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Recuperar senha",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Informe o código que foi enviado por e-mail",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 128,
            height: 40,
          ),

          // Text('Login', style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
              ),
              child: InputCodigo(),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Container(
              height: 60,
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
                borderRadius: BorderRadius.circular(25),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CONTINUAR",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NovaSenha()));
                  },
                ),
              )),
        ]),
      ),
    );
  }
}
