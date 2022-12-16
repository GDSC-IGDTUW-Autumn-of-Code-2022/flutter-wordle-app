import 'package:flutter/material.dart';

List<ThemeData> getThemes() {
  return [
    ThemeData(backgroundColor: Colors.cyanAccent[100], accentColor: Colors.cyanAccent[700], textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
    ThemeData(backgroundColor: Colors.pink[100], accentColor: Colors.lightGreen[600], textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)) ),
    ThemeData(backgroundColor: Colors.yellow[400], accentColor: Colors.green[900], textTheme: TextTheme(bodyText2: TextStyle(color: Colors.yellow[400]))),
    ThemeData(backgroundColor: Colors.amber[300], accentColor: Colors.orange[900], textTheme: TextTheme(bodyText2: TextStyle(color: Colors.amber[300]))),
    ThemeData(backgroundColor: Colors.red, accentColor: Colors.green[900], textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
    ThemeData(backgroundColor: Colors.black, accentColor: Colors.orange[800], textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
  ];
}
