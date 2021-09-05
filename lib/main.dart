import 'package:flutter/material.dart';
import 'dart:math';
import 'package:untitled/pages/game/game_page.dart';

void main() {

  /*var r = Random();
  var num = r.nextInt(100).toString();
  var textWidget = Text(
    num,
    style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 120),
    textDirection: TextDirection.ltr,
  );
  var centerWidget = Center(child: textWidget);
  runApp(centerWidget);*/
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GamePage(),
      //home: MyHomePage(title: 'HELLO',),
    );
  }
}
class Palette {
  static const MaterialColor myColor = const MaterialColor(
    0xff8b2030,
    const <int, Color>{
      50: const Color(0xff7d1d2b), //10%
      100: const Color(0xff6f1a26), //20%
      200: const Color(0xff611622), //30%
      300: const Color(0xff53131d), //40%
      400: const Color(0xff461018), //50%
      500: const Color(0xff380d13), //60%
      600: const Color(0xff2a0a0e), //70%
      700: const Color(0xff1c060a), //80%
      800: const Color(0xff0e0305), //90%
      900: const Color(0xff000000), //100%
    },
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
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
