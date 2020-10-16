
import 'package:flutter/material.dart';
import 'package:flutter_app/TabBoxC.dart';
import 'package:flutter_app/TabBoxChild.dart';

class ParentWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget>{

  bool _active =false;

  _handleTapBoxChanged(bool newState){
    print("ParentWidget, _handleTapBoxChanged:$newState");
    setState(() {
      _active= newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBoxC(
        active: _active,
        onChanged: _handleTapBoxChanged,
      ),
    );
  }

}