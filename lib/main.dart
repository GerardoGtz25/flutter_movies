import 'package:flutter/material.dart';
import 'package:movies/screens/homeScreen.dart';
import 'package:movies/screens/movieDetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) =>  HomeScreen(),
        '/b': (BuildContext context) => MovieDetails(),
      },
      home: HomeScreen(),
    );
  }
}
