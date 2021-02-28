import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Spacer(),
          RaisedButton(
            shape: CircleBorder(),

            color: Colors.blue,
            disabledColor: Colors
                .blue, //add this to your code            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 100,
              color: Colors.white,
            ),
          ),
          RaisedButton(
            shape: CircleBorder(),

            color: Colors.blue,
            disabledColor: Colors
                .blue, //add this to your code            onPressed: () {},
            child: Icon(
              Icons.remove,
              size: 100,
              color: Colors.white,
            ),
          ),
          RaisedButton(
            shape: CircleBorder(),
            color: Colors.blue,
            disabledColor: Colors
                .blue, //add this to your code            onPressed: () {},
            child: Text(
              '/',
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          ),
          RaisedButton(
            shape: CircleBorder(),
            color: Colors.blue,
            disabledColor: Colors
                .blue, //add this to your code            onPressed: () {},
            child: Text(
              '×',
              style: TextStyle(fontSize: 120, color: Colors.white),
            ),
          ),

          // IconButton(
          //   onPressed: ,
          //   icon: Icon(
          //     Icons.add,
          //     size: 200,
          //   ), // change it to sign-in
          // )
        ],
      ),
    );
  }
}
