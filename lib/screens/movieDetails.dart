import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Container(
        child: Text('Hola'),
      )
    );
  }
}