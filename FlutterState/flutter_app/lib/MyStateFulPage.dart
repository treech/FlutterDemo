import 'package:flutter/material.dart';

class MyStateFulPage extends StatefulWidget {
  final int initialCount;

  const MyStateFulPage({Key key, this.initialCount: 0});

  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MyStateFulPage> {
  int _counter;

  @override
  void initState() {
    super.initState();
    this._counter = widget.initialCount;
    log("initState");
  }

  @override
  Widget build(BuildContext context) {
    log("build");
    return Scaffold(
      appBar: AppBar(title: Text('MyState'),),
      body: Center(
        child: FlatButton(
          child: Text(
            '$_counter',
            style: TextStyle(fontSize: 40),
          ),
          textColor: Colors.blue,
          onPressed: () => setState(() => ++_counter),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant MyStateFulPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    log("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    log("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    log("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("didChangeDependencies");
  }

  log(String s){
    print("MyStateFulPage $s");
  }
}
