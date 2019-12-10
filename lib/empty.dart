
import 'package:flutter/material.dart';

class Empty extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('命名路由（参数&回调）'),
          onPressed:  ()=> Navigator.pushNamed(context, "detail",arguments: "Hey")
          )
          )
          );
  }
}