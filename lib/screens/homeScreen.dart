import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final genreList = ['Terror', 'Drama', 'Commedy', 'Another one'];

  handleTap(BuildContext context) {
    Navigator.of(context).pushNamed('/b');
    print('Hola Mundo');
  }

  

  // Container getContainer() {
  //   return Container(
  //     color: Colors.redAccent,
  //     margin: EdgeInsets.all(10),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: <Widget>[
  //         getSonContainer(),
  //         getSonContainer(),
  //         getSonContainer(),
  //       ]
  //     ),
  //   );
  // }

  // Expanded getElements(BuildContext context) {
  //   return Expanded(
  //     flex: 1,
  //     child: Container(
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //         border: Border.all(color: Colors.red, width: 5),
  //         color: Colors.pinkAccent,
  //       ),
  //       child: InkWell(child: Text('Navigate'), onTap: () => handleTap(context),)
  //     ),
  //   );
  // }
 InkWell getItemList(text, color) {
   return InkWell(
     onTap: () => print(text),
     child: Container(
      width: 150.0,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Center(child: Text(text, style: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18
      ))),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15)
      )
    )
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter movie'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getItemList('Drama', Colors.red),
                getItemList('Terror', Colors.blue),
                getItemList('Commedy', Colors.green),
                getItemList('Science Fiction', Colors.purple),
              ]
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                getItemList('Drama', Colors.red),
                getItemList('Drama', Colors.red),
                getItemList('Drama', Colors.red)
              ]
            ),
          )
        ]
      )
    );
  }
}



//  Container(
//               width: double.infinity,
//               margin: EdgeInsets.only(top: 16),
//               padding: EdgeInsets.all(20),
//               height: 150,
//               decoration: BoxDecoration(
//                 color: Colors.orangeAccent,
//                 borderRadius: BorderRadius.all(Radius.circular(10))
//               ),
//               child: Text(
//                 'The Best Movies',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white
//                 )
//               )
//             ),