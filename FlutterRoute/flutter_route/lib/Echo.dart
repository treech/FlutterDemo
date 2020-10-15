import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Echo extends StatelessWidget {

  const Echo({Key key, @required this.text, @required this.backgroundColor})
      : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Echo')),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Text(text),
        ),
      ),
    );
  }
}
