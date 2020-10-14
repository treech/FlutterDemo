import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_route/TipRoute.dart';

class RouteParamTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RouteParamTest'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            var result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return TipRoute(key, 'From RouteParamTest');
            }));
            print('receive result:$result');
          },
          child: Text('Open RouteParam Test page'),
          textColor: Colors.blue,
        ),
      ),
    );
  }
}
