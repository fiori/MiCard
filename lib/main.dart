import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
                    customText(
                      'Flavio Fiori',
                      'Pacifico',
                      fontLetterSize: 40.0,
                    ),
                    customText('SOFTWARE DEVELOPER', 'SourceSansPro',
                        haveLetterSpacing: true,
                        fontColor: Colors.teal.shade100),
                    SizedBox(
                      height: 20.0,
                      width: 150.0,
                      child: Divider(color: Colors.teal.shade100),
                    ),
                    customContainer(Icons.phone, '96 56 55 0 99'),
                    customContainer(Icons.email, 'fioridevelopment@gmail.com'),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

Widget customText(String text, String fontFamily,
        {Color fontColor = Colors.white,
        bool haveLetterSpacing = false,
        double fontLetterSize = 20}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: fontLetterSize,
        fontFamily: fontFamily,
        color: fontColor,
        fontWeight: FontWeight.bold,
        letterSpacing: haveLetterSpacing ? 5.0 : 0.0,
      ),
    );

Widget customContainer(IconData icon, String content) => Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
          size: 30,
        ),
        title: Text(
          content,
          style: TextStyle(
              color: Colors.teal.shade900,
              fontSize: 20,
              fontFamily: 'SourceSansPro'),
        ),
      ),
    );
