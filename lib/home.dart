import 'package:flutter/material.dart';
import 'game1.dart';

class Home extends StatelessWidget {
  static String pageName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage('assets/icon/icon.png')),
            Text(
              "JEUX CALCULE RAPIDE ",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Ubuntu",
              ),
            ),
            Text(
              '1.0.0 créé par saturne_dev (version beta)',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.red[200],
              child: Container(
                width: 90,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "addition",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_right_alt_sharp,
                        size: 40, color: Colors.green),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Game.pageName);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          afficherDialog(context);
        },
        child: Icon(
          Icons.help_outline_sharp,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}

afficherDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blueAccent[100],
          content: Container(
            width: 300,
            height: 500,
            child: Center(
              child: Text(
                "Ce jeu a été réalisé par Saturne dev dans le but de tester le framwork flutter et consite a vous pousser a améliorer vos reflexes en calcule rapide. il s'agit là d'une verison beta avec très peu de fonctionnalitées et certaines pas encors disponible comme le chronimètre et l'enregistrement des scores mais en attendant amusez vous bien",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      });
}
