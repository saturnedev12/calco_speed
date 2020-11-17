import 'package:flutter/material.dart';
import 'dart:math';
import 'content.dart';

class Game extends StatefulWidget {
  static String pageName = '/game';
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  static List generate() {
    List<int> nombres = [];
    for (var i = 1; i <= 6; i++) {
      if (i <= 2) {
        nombres.add(Random().nextInt(20));
      } else {
        nombres.add(Random().nextInt(40));
      }
    }
    return nombres;
  }

  static List nmb = generate();
  static int rep = nmb[0] + nmb[1];
  static int i = Random().nextInt(3);
  static int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          width: 400,
          height: 630,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.cyan[900], Colors.tealAccent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Quiz(
                n1: nmb[0],
                n2: nmb[1],
              ),
              SizedBox(
                height: 100,
              ),
              Content(
                callback: (bool chk) {
                  setState(() {
                    nmb = generate();
                    rep = nmb[0] + nmb[1];
                    i = Random().nextInt(3);
                    if (chk) {
                      score++;
                    } else {
                      score = 0;
                    }
                  });
                  print("bien");
                },
                n1: nmb[2] + 6,
                n2: nmb[3] + 6,
                n3: nmb[4] + 6,
                n4: nmb[5] + 6,
                rep: rep,
                i: i,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: "0"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                color: Colors.orangeAccent,
              ),
              label: "$score"),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}

//ecran

//Quiz
class Quiz extends StatelessWidget {
  int n1, n2;
  Quiz({this.n1, this.n2});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          "$n1 + $n2 = ?",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
