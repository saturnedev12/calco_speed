import 'package:flutter/material.dart';
import 'dart:math';
import 'home.dart';
import 'game1.dart';

main() {
  return runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        initialRoute: Home.pageName,
        routes: {
          Home.pageName: (context) => Home(),
          Game.pageName: (context) => Game(),
        },
      ),
    );
  }
}

afficherDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blueAccent,
          content: Container(
            width: 200,
            height: 100,
            child: Center(
              child: Text(
                "coucou",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      });
}
