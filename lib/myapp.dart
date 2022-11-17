import 'package:flutter/material.dart';
import 'package:meuapp/pages/welcome.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primarySwatch: Colors.orange, scaffoldBackgroundColor: Colors.white),
   home: WelcomeScreen(),
    );
  }
}
