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
  dynamic value1 = 0, value2 = 0;
  dynamic opr='';
  dynamic preopr='';
  dynamic Finalresult=0;
  dynamic Result=0;
  dynamic userInput = ' ';
  bool operatorButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Spacer(),
          Container(
            child: Text(
              userInput,
              overflow: TextOverflow.clip,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonTheme(
                  minWidth: 200.0,
                  height: (70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
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
                    onPressed: () {
                      // calculation("AC");
                      // print(userInput);
                      setState((){
                        value2=0;
                        value1=0;
                        Result='';
                        Finalresult=0;
                        opr='';
                        preopr='';
                        userInput=' ';
                      });
                    },
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  onPressed: () {
                    setState((){
                    });
                    print(userInput);
                  },
                  shape: CircleBorder(),

                  color: Colors.blue,
                  disabledColor: Colors
                      .blue, //add this to your code            onPressed: () {},
                  child: Text(
                    '+/-',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    operatorButton = true;
                    value1 = value1 + double.parse(userInput.substring(1));
                    setState(() {
                      userInput = ' ' + value1.toInt().toString();
                    });
                  },
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '7';
                      } else {
                        userInput = userInput + '7';
                      }
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '8';
                      } else {
                        userInput = userInput + '8';
                      }
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '9';
                      } else {
                        userInput = userInput + '9';
                      }
                    });
                  },
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
                  onPressed: () {
                    operatorButton = true;
                    value1 = int.parse(userInput.substring(1)) - value1;
                    print(value1);
                    setState(() {
                      userInput = value1.toInt().toString();
                    });
                  },
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '4';
                      } else {
                        userInput = userInput + '4';
                      }
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '5';
                      } else {
                        userInput = userInput + '5';
                      }
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '6';
                      } else {
                        userInput = userInput + '6';
                      }
                    });
                  },
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '1';
                      } else {
                        userInput = userInput + '1';
                      }
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '2';
                      } else {
                        userInput = userInput + '2';
                      }
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      if (operatorButton) {
                        operatorButton = false;
                        userInput = ' ' + '3';
                      } else {
                        userInput = userInput + '3';
                      }
                    });
                  },
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonTheme(
                  minWidth: 215.0,
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
                    onPressed: () {
                      setState(() {
                        userInput = userInput + '0';
                      });
                    },
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      userInput = userInput + '.';
                    });
                  },
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
            ),
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
  //Calculator logic

  void calculation(String btnText){
    // if(btnText=="AC"){
    //
    // }
    // else if(btnText=='C'){
    //   // userInput=userInput %(10);
    // }
  }

}