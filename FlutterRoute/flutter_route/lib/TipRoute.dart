import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {

  final String text;

  TipRoute(Key key, this.text) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TipRoute')),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              Text(text),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'i am return value');
                },
                textColor: Colors.blue,
                child: Text('click back'
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}