import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  createState() => SimpleCalculatorState();
}

class SimpleCalculatorState extends State<SimpleCalculator> {
  static var num1 = "0",
      num2 = "0",
      ansStr = '0',
      ans = 0,
      oper = '',
      cal = '',
      flag = 0;

  void clear() => setState(() {
        num1 = "0";
        num2 = "0";
        ansStr = '0';
        ans = 0;
        oper = '';
        flag = 0;
        cal = '';
      });

  void add() => setState(() {
        if (oper.isEmpty) {
          oper = '+';
          cal = "$cal+";
          if (flag == 0) {
            num2 = num1;
          } else {
            num2 = ansStr;
          }
          num1 = '0';
        }
      });

  void substract() => setState(() {
        if (oper.isEmpty) {
          oper = '-';
          cal = "$cal-";
          if (flag == 0) {
            num2 = num1;
          } else {
            num2 = ansStr;
          }
          num1 = '0';
        }
      });

  void mul() => setState(() {
        if (oper.isEmpty) {
          oper = '*';
          cal = "$cal*";
          if (flag == 0) {
            num2 = num1;
          } else {
            num2 = ansStr;
          }
          num1 = '0';
        }
      });

  void div() => setState(() {
        if (oper.isEmpty) {
          oper = '/';
          cal = "$cal/";
          if (flag == 0) {
            num2 = num1;
          } else {
            num2 = ansStr;
          }
          num1 = '0';
        }
      });

  void one() => setState(() {
        cal = "${cal}1";
        num1 += "1";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void two() => setState(() {
        cal = "${cal}2";
        num1 += "2";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void three() => setState(() {
        cal = "${cal}3";
        num1 += "3";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void four() => setState(() {
        num1 += "4";
        cal = "${cal}4";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void five() => setState(() {
        num1 += "5";
        cal = "${cal}5";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void six() => setState(() {
        num1 += "6";
        cal = "${cal}6";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void seven() => setState(() {
        num1 += "7";
        cal = "${cal}7";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void eight() => setState(() {
        num1 += "8";
        cal = "${cal}8";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void nine() => setState(() {
        num1 += "9";
        cal = "${cal}9";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void zero() => setState(() {
        num1 += "0";
        cal = "${cal}0";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });
  void remove() => setState(() {
        // num1 += "0";
        cal = cal.substring(0, cal.length - 1);
        num1 = num1.substring(0, num1.length - 1);
        ans = int.parse(num1);

        // ans = int.parse(num1);

//         if (num1 != null && num1.length > 0) {
//   num1 = num1.substring(0, num1.length - 1);
// }
      });

  void disp() => setState(() {
        if (oper == '+') {
          ans = int.parse(num1) + int.parse(num2);
          flag++;
        } else if (oper == '-') {
          ans = int.parse(num2) - int.parse(num1);
          flag++;
        } else if (oper == '*') {
          ans = int.parse(num2) * int.parse(num1);
          flag++;
        } else if (oper == '/') {
          ans = int.parse(num2) ~/ int.parse(num1);
          flag++;
        }
        ansStr = "$ans";
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 60, 60),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          AnswerText(answer: ansStr),
          CalculateText(
            calculation: cal,
          ),
          Container(),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                      color: Color.fromARGB(255, 63, 60, 60),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _buttonPurple("CA", clear),
                          _buttonPurple("DEL", remove),
                          _buttonPurple("%", disp),
                          // _buttonPink("÷", Colors.white, div)
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _button("9", nine),
                      _button("8", eight),
                      _button("7", seven),
                      // _buttonPink("x", Colors.white, mul)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _button("4", four),
                      _button("5", five),
                      _button("6", six),
                      // _buttonPink("−", Colors.white, substract)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _button("1", one),
                      _button("2", two),
                      _button("3", three),
                      // _buttonPinkDark("+", Colors.white, add)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _button(".", clear),
                      _button("0", zero),
                      _button("=", disp),
                      // _buttonPinkDark("", Colors.transparent, add),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  _buttonPink("÷", Colors.white, div),
                  SizedBox(height: 30),
                  _buttonPink("x", Colors.white, mul),
                  SizedBox(height: 30),
                  _buttonPink("−", Colors.white, substract),
                  SizedBox(height: 30),
                  _buttonPinkDark("+", Colors.white, add),
                  SizedBox(
                    height: 10,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _button(String number, Function() f) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        // height: 80.0,
        height: MediaQuery.of(context).size.height * 0.115,

        elevation: 0.0,
        shape:
            RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
        child: Text(number,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42.0)),
        textColor: Colors.white,
        color: Color.fromARGB(255, 5, 3, 3),
        onPressed: f,
      ),
    );
  }

  Widget _buttonPurple(String number, Function() f) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        padding: EdgeInsets.all(0.0),
        height: 60.0,
        minWidth: 90,
        shape:
            RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
        elevation: 0.0,
        child: Text(number,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
        textColor: Colors.white,
        color: Color.fromARGB(255, 102, 36, 218),
        onPressed: f,
      ),
    );
  }

  Widget _buttonPink(String number, Color color, Function() f) {
    return MaterialButton(
      padding: EdgeInsets.all(0.0),
      height: 90.0,
      elevation: 0.0,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48.0)),
      textColor: Colors.black,
      color: color,
      onPressed: f,
    );
  }

  Widget _buttonPinkDark(String number, Color color, Function() f) {
    return MaterialButton(
      height: 90.0,
      elevation: 0.0,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48.0)),
      textColor: Colors.black,
      color: color,
      onPressed: f,
    );
  }
}

class AnswerText extends StatelessWidget {
  final String answer;

  AnswerText({required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.fromLTRB(0, 0, 20.0, 10.0),
        child: Text(
          "$answer",
          style: TextStyle(
              color: Color.fromARGB(255, 239, 230, 234), fontSize: 60.0),
        ));
  }
}

class CalculateText extends StatelessWidget {
  final String calculation;
  CalculateText({required this.calculation});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.fromLTRB(0, 0, 20.0, 40.0),
        child: Text(
          "$calculation",
          style: TextStyle(
              color: Color.fromARGB(255, 171, 168, 168), fontSize: 20.0),
        ));
  }
}
