import 'package:flutter/material.dart';

class My extends StatefulWidget {

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  String name = "alo7";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text("widget.title"),
      // ),
      body:  ListView(
      shrinkWrap: true, 
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      children: <Widget>[
        MyHeaderCard(name: name,),
      ],
    )
    );
  }

}

class MyHeaderCard extends StatelessWidget {
 
  final String name;

  const MyHeaderCard({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final singleWidth = size.width - 20;
    final singleHeight = singleWidth /16 * 9;

    return Container(
      width: singleWidth,
      height: singleHeight,
      child: Stack(
        children: <Widget>[
            Image(height: singleHeight, 
                  width: singleWidth,
                  image: AssetImage("images/img_01.png",),
                  ),
            Positioned(left: 18.0, top:70.0, child: Text(name)),//叠加在黄色容器之上的文本 )
        ],
      )
    );
  }
}

// class MyHeaderCard extends StatelessWidget {
 
//   final String name;

//   const MyHeaderCard({Key key, @required this.name}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final size =MediaQuery.of(context).size;
//     final singleWidth = size.width - 20;
//     final singleHeight = singleWidth /16 * 9;

//     return Container(
//       width: singleWidth,
//       height: singleHeight,
//       child: Stack(
//         children: <Widget>[
//             Image(height: singleHeight, 
//                   width: singleWidth,
//                   image: AssetImage("images/img_01.png",),
//                   ),
//             Positioned(left: 18.0, top:70.0, child: Text(name)),//叠加在黄色容器之上的文本 )
//         ],
//       )
//     );
//   }
// }