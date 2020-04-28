import 'package:flutter/material.dart';

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
        '/b': (BuildContext context) => SecondScreen(),
      },
      home: HomeScreen(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  
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

class HomeScreen extends StatelessWidget {

  handleTap(BuildContext context) {
    Navigator.of(context).pushNamed('/b');
    print('Hola Mundo');
  }

  Container getSonContainer() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.purple,
    );
  }

  Container getContainer() {
    return Container(
      color: Colors.redAccent,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          getSonContainer(),
          getSonContainer(),
          getSonContainer(),
        ]
      ),
    );
  }

  Expanded getElements(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 5),
          color: Colors.pinkAccent,
        ),
        child: InkWell(child: Text('Navigate'), onTap: () => handleTap(context),)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
      ),
      body: Container(
        color: Colors.teal,
        // margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            getContainer(),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                children: <Widget>[
                  getElements(context),
                ],
              )
            ),
            getContainer(),
            getContainer(),
          ]
        ),
      )
    );
  }
}


