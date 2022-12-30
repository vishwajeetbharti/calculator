import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      );
    });
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
  void initState() {
    // TODO: implement initState
    _clear();
    super.initState();
  }

  dynamic value1 = 0, value2 = 0;
  dynamic opr = '';
  dynamic preOprator = '';
  dynamic finalResult = 0;
  dynamic result = 0;
  dynamic userInput = ' ';
  bool operatorButton = false;
  void _clear() {
    value2 = 0;
    value1 = 0;
    result = '';
    finalResult = 0;
    opr = '';
    preOprator = '';
    userInput = ' ';
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Spacer(flex: 1),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      value2 = 0;
                      value1 = 0;
                      result = '';
                      finalResult = 0;
                      opr = '';
                      preOprator = '';
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
                          fontSize: 16.0);
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.09,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "AC",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (userInput == '') {
                      Fluttertoast.showToast(
                          msg: "All Cleared",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 3,
                          backgroundColor: Colors.black26,
                          textColor: Colors.black,
                          fontSize: 16.0);
                    } else {
                      String s = userInput.toString();
                      s = s.substring(0, s.length - 1);
                      result = s;
                      setState(() {
                        userInput = s;
                      });
                    }
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "C",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('+');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            offset: Offset(0, 20),
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    calculation('7');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "7",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('8');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "8",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('9');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "9",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('-');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    calculation('4');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('5');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('6');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "6",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('/');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "/",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    calculation('1');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('2');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('3');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('×');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "×",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    calculation('0');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.09,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('.');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        ".",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calculation('=');
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "=",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }

  //Calculator logic
  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

  String add() {
    result = (value1 + value2).toString();
    value1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (value1 - value2).toString();
    value1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (value1 * value2).toString();
    value1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (value1 / value2).toString();
    value1 = double.parse(result);
    return doesContainDecimal(result);
  }

  void calculation(String btnText) {
    if (opr == '=' && btnText == '=') {
      if (preOprator == '+')
        finalResult = add();
      else if (preOprator == '-')
        finalResult = sub();
      else if (preOprator == '×')
        finalResult = mul();
      else if (preOprator == '/') finalResult = div();
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == '/' ||
        btnText == '=' ||
        btnText == '×') {
      if (value1 == 0) {
        value1 = double.parse(result);
      } else {
        value2 = double.parse(result);
      }
      if (opr == '+')
        finalResult = add();
      else if (opr == '-')
        finalResult = sub();
      else if (opr == '×')
        finalResult = mul();
      else if (opr == '/') finalResult = div();

      preOprator = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = value1 / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result + '.';
      }
      finalResult = result;
      print(finalResult);
    } else {
      result = result + btnText;
      finalResult = result;
    }
    setState(() {
      userInput = finalResult;
    });
  }
}
