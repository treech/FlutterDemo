import 'package:flutter/material.dart';

class MyContextPage extends StatefulWidget {
  final int initialCount;

  const MyContextPage({Key key, this.initialCount: 0});

  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MyContextPage> {
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
      appBar: AppBar(
        title: Text('子树中获取state对象'),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
              ScaffoldState scaffoldState =
                  context.findAncestorStateOfType<ScaffoldState>();
              scaffoldState.showSnackBar(SnackBar(content: Text('我是SnackBar')));
            },
            child: Text('show SnackBar'),
          );
        }),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant MyContextPage oldWidget) {
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

  log(String s) {
    print("MyContextPage $s");
  }
}
