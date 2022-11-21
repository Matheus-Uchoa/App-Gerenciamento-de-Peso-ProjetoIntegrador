import 'package:flutter/material.dart';

class NovaSenha extends StatelessWidget {
  const NovaSenha({Key? key}) : super(key: key);

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
                "Defina uma nova senha",
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
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "    Nova senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "    Confirmar nova senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(fontSize: 20),
              ),
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
                    //verificar se as senhas são iguais
                  },
                ),
              )),
        ]),
      ),
    );
  }
}

