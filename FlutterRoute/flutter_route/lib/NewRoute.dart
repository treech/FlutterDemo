import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print("new route build args:$args");
    return Scaffold(
        appBar: AppBar(title: Text('New Route')),
        body: Center(child: Text('New Route Body Text!')));
  }
}
