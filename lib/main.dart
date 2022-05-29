import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,deviceType){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Calculator',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MyHomePage(),
        );
      }
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
    return Sizer(
      builder: (context,orientation,deviceType) {
        return Scaffold(
          appBar: AppBar(
              title: Text('Calculator'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Spacer(flex:1),
              Container(

                child: Text(
                  userInput,
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),

              Divider(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonTheme(
                      minWidth: 190.0,
                      height: (70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.black)),
                      child: RaisedButton(
                        elevation: 10.0,
                        hoverColor: Colors.green,
                        color: Colors.black26,
                        child: Text(
                          "AC",
                          style: TextStyle(
                              fontSize: (30),
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            value2 = 0;
                            value1 = 0;
                            Result = '';
                            Finalresult = 0;
                            opr = '';
                            preopr = '';
                            userInput = ' ';
                          });
                          if (userInput == ' ') {
                            Fluttertoast.showToast(
                                msg: "Already Cleared",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 3,
                                backgroundColor: Colors.black26,
                                textColor: Colors.black,
                                fontSize: 16.0
                            );
                          }
                        },
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        if (userInput == '') {
                          Fluttertoast.showToast(
                              msg: "All Cleared",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.TOP,
                              timeInSecForIosWeb: 3,
                              backgroundColor: Colors.black26,
                              textColor: Colors.black,
                              fontSize: 16.0
                          );
                        }
                        else {
                          String s = userInput.toString();
                          s = s.substring(0, s.length - 1);
                          Result = s;
                          setState(() {
                            userInput = s;
                          });
                        }
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        'C',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('+');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 55, color: Colors.white),
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
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('7');
                      },
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.black)

                      ),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('8');
                      },
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.black)
                      ),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('9');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('-');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '−',
                        style: TextStyle(fontSize: 55, color: Colors.white),
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
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('4');
                      },
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.black)
                      ),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('5');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                       elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('6');
                      },
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.black)
                      ),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('/');
                      },
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.black)
                      ),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '/',
                        style: TextStyle(fontSize: 55, color: Colors.white),
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
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('1');
                      },
                      shape: CircleBorder(side:BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('2');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('3');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('×');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '×',
                        style: TextStyle(fontSize: 55, color: Colors.white),
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
                      minWidth: 190.0,
                      height: (70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.black)),
                      child: RaisedButton(
                        elevation: 10.0,
                        hoverColor: Colors.green,
                        color: Colors.black26,
                        child: Text(
                          "0",
                          style: TextStyle(
                              fontSize: (55),
                              color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          calculation('0');
                        },
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('.');
                      },
                      shape: CircleBorder(side: BorderSide(color: Colors.black)),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors
                          .blue,
                      //add this to your code            onPressed: () {},
                      child: Text(
                        '.',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        calculation('=');
                      },
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.black)
                      ),
                      elevation: 10,
                      color: Colors.black26,
                      disabledColor: Colors.blue,
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 55, color: Colors.white),
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
        Result= Result.toString()+'.';
      }
      Finalresult= Result;
      print(Finalresult);
    }
    else{
      Result=Result+btnText;
      Finalresult=Result;
    }
    setState((){
      userInput=Finalresult;
    });


  }

}