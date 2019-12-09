
import 'package:flutter/material.dart';

class Empty extends StatelessWidget {


  final String text;

  const Empty({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text(args),
      ),
    );
  }
}