import 'package:flutter/cupertino.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                padding: EdgeInsets.all(15),
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  'AC',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.all(15),
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  'C',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '−',
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),
                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '/',
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),
                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '×',
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                onPressed: null,
                shape: CircleBorder(),
                color: Colors.blue,
                disabledColor: Colors.blue,
                child: Text(
                  '=',
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
            ],
          )

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
