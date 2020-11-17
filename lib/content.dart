import 'package:flutter/material.dart';
import 'dart:math';

//contenu
class Content extends StatelessWidget {
  final Function(bool) callback;
  int n1, n2, n3, n4, rep, i;
  static List<int> marc = [1, 2, 3, 4];
  Content({
    this.n1,
    this.n2,
    this.n3,
    this.n4,
    this.rep,
    this.i,
    Key key,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = marc[i];
    return Container(
      width: 400,
      height: 300,
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Numb1(
                callback: (bool chk) {
                  this.callback(chk);
                },
                val: n1,
                index: index,
                rep: rep,
              ),
              Numb2(
                callback: (bool chk) {
                  this.callback(chk);
                },
                val: n2,
                index: index,
                rep: rep,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Numb3(
                callback: (bool chk) {
                  this.callback(chk);
                },
                val: n3,
                index: index,
                rep: rep,
              ),
              Numb4(
                callback: (bool chk) {
                  this.callback(chk);
                },
                val: n4,
                index: index,
                rep: rep,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//les bouton juste en bas
class Numb1 extends StatelessWidget {
  int val, index, rep;
  final Function(bool) callback;
  Numb1({
    this.val,
    this.rep,
    this.index,
    Key key,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    while (val == rep) {
      val = Random().nextInt(20);
    }
    if (index == 1) {
      val = rep;
    }

    return RaisedButton(
      onPressed: () {
        if (val == rep) {
          this.callback(true);
        } else {
          this.callback(false);
          afficherDialog(context, rep);
        }
      },
      color: Colors.teal[400],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Container(
        width: 40,
        height: 80,
        child: Center(
          child: Text(
            "$val",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

class Numb2 extends StatelessWidget {
  int val, index, rep;
  final Function(bool) callback;
  Numb2({
    this.val,
    this.rep,
    this.index,
    Key key,
    this.callback,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    while (val == rep) {
      val = Random().nextInt(20);
    }
    if (index == 2) {
      val = rep;
    }
    return RaisedButton(
      onPressed: () {
        if (val == rep) {
          this.callback(true);
        } else {
          this.callback(false);
          afficherDialog(context, rep);
        }
      },
      color: Colors.teal[400],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Container(
        width: 40,
        height: 80,
        child: Center(
          child: Text(
            "$val",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

class Numb3 extends StatelessWidget {
  int val, index, rep;
  final Function(bool) callback;
  Numb3({
    this.val,
    this.rep,
    this.index,
    Key key,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    while (val == rep) {
      val = Random().nextInt(20);
    }
    if (index == 3) {
      val = rep;
    }
    return RaisedButton(
      onPressed: () {
        if (val == rep) {
          this.callback(true);
        } else {
          this.callback(false);
          afficherDialog(context, rep);
        }
      },
      color: Colors.teal[400],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Container(
        width: 40,
        height: 80,
        child: Center(
          child: Text(
            "$val",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

class Numb4 extends StatelessWidget {
  int val, index, rep;
  final Function(bool) callback;
  Numb4({
    this.val,
    this.rep,
    this.index,
    Key key,
    this.callback,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    while (val == rep) {
      val = Random().nextInt(20);
    }
    if (index == 4) {
      val = rep;
    }
    return RaisedButton(
      onPressed: () {
        if (val == rep) {
          this.callback(true);
        } else {
          this.callback(false);
          afficherDialog(context, rep);
        }
      },
      color: Colors.teal[400],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Container(
        width: 40,
        height: 80,
        child: Center(
          child: Text(
            "$val",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

//alert dialog
afficherDialog(BuildContext context, int note) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: 400,
            height: 300,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mood_bad_sharp,
                    size: 60,
                    color: Colors.red,
                  ),
                  Text("non non ça fait",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("$note",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
          ),
        );
      });
}
