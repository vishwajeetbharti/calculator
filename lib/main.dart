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
                    calculation('+/-');
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
                    calculation('+');
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
                    calculation('7');
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
                    calculation('8');
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
                    calculation('9');
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
                    calculation('-');
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
                    calculation('4');
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
                    calculation('5');
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
                    calculation('6');
                    // setState(() {
                    //   if (operatorButton) {
                    //     operatorButton = false;
                    //     userInput = ' ' + '6';
                    //   } else {
                    //     userInput = userInput + '6';
                    //   }
                    // });
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
                  onPressed: () {
                    calculation('/');
                  },
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
                    calculation('1');
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
                    calculation('2');
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
                    calculation('3');
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
                  onPressed: () {
                    calculation('×');
                  },
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
                     calculation('0');
                    },
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    calculation('.');
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
                  onPressed: () {
                    calculation('=');
                  },
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
  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

  String add() {
    Result = (value1 + value2).toString();
    value1 = double.parse(Result);
    return doesContainDecimal(Result);
  }

  String sub() {
    Result = (value1 - value2).toString();
    value1 = double.parse(Result);
    return doesContainDecimal(Result);
  }
  String mul() {
    Result = (value1 * value2).toString();
    value1 = double.parse(Result);
    return doesContainDecimal(Result);
  }
  String div() {
    Result = (value1 / value2).toString();
    value1 = double.parse(Result);
    return doesContainDecimal(Result);
  }

  void calculation(String btnText){
    if(opr=='='&&btnText=='='){
      if(preopr=='+')
        Finalresult=add();
      else if(preopr=='-')
        Finalresult=sub();
      else if(preopr=='×')
        Finalresult=mul();
      else if(preopr=='/')
        Finalresult=div();

     }
    else if(btnText=='+'||btnText=='-'||btnText=='/'||btnText=='='||btnText=='×'){
      if(value1==0)
        {
          value1=double.parse(Result);
        }
      else {
        value2=double.parse(Result);
      }
      if(opr=='+')
        Finalresult=add();
      else if(opr=='-')
        Finalresult=sub();
      else if(opr=='×')
        Finalresult=mul();
      else if(opr=='/')
        Finalresult=div();

      preopr=opr;
      opr=btnText;
      Result='';
    }
    else if(btnText=='%'){
      Result= value1 /100;
      Finalresult = doesContainDecimal(Result);
    }
    else if(btnText=='.'){
      if(!Result.toString().contains('.')){
        Result=Result.toString()+'.';
      }
      Finalresult= Result;
    }
    else if(btnText=='+/-'){
      Result.toString().startsWith('-') ? Result= Result.toString().substring(1): Result='-'+Result.toString();
      Finalresult=Result;
    }
    else{
      Result=Result + btnText;
      Finalresult=Result;
      print(Finalresult);
    }
    setState((){
      userInput=Finalresult;
    });


  }

}