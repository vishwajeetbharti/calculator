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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 0.2,
              width: 500.0,
              color: (Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonTheme(
                minWidth: 170.0,
                height: (70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Colors.blue)),
                child: RaisedButton(
                  elevation: 10.0,
                  hoverColor: Colors.green,
                  color: Colors.blue,
                  child: Text(
                    "AC",
                    style: TextStyle(
                        fontSize: (80),
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
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
                  '7',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '8',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '9',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
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
                  '4',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '6',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
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
                  '1',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
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
              ButtonTheme(
                minWidth: 170.0,
                height: (70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Colors.blue)),
                child: RaisedButton(
                  elevation: 10.0,
                  hoverColor: Colors.green,
                  color: Colors.blue,
                  child: Text(
                    "0",
                    style: TextStyle(
                        fontSize: (80),
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),

                color: Colors.blue,
                disabledColor: Colors
                    .blue, //add this to your code            onPressed: () {},
                child: Text(
                  '.',
                  style: TextStyle(fontSize: 90, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {},
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
