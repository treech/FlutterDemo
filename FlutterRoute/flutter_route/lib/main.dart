import 'package:flutter/material.dart';
import 'package:flutter_route/NewRoute.dart';
import 'package:flutter_route/RouteParamTest.dart';
import 'package:flutter_route/TipRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: 'main',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          'main': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
          'new_route': (context) => NewRoute(),
          'tip_route': (context) =>
              TipRoute(key, ModalRoute.of(context).settings.arguments),
        },
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (context) {
            var routeName = settings.name;
            print('routeName:$routeName');
            return null;
          });
        },
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'new_route',
                      arguments: 'args from home page');
                },
                child: Text('open new route',
                    style: TextStyle(fontSize: 16, color: Colors.blue)),
                textColor: Colors.blue),
            FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RouteParamTest();
                  }));
                },
                child: Text('open new route with param',
                    style: TextStyle(fontSize: 16, color: Colors.blue)),
                textColor: Colors.blue)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
