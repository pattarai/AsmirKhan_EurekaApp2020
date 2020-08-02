import 'package:flutter/material.dart';
import 'dart:math';

class Calc extends StatefulWidget {
  Calc({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalcState createState() => new _CalcState();
}

class _CalcState extends State<Calc> {
  String output = "0";

  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "X") {
      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";
    } else if (buttonText == "sin" ||
        buttonText == "cos" ||
        buttonText == "tan" ||
        buttonText == "log") {
      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already conatains a decimals");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "X") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      if (operand == "sin") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * sin(num2)).toString();
      }
      if (operand == "cos") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * cos(num2)).toString();
      }
      if (operand == "tan") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * tan(num2)).toString();
      }
      if (operand == "log") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * log(num2)).toString();
      }
      if (operand == "sin-1") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * 1 / sin(num2)).toString();
      }
      if (operand == "cos-1") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * 1 / cos(num2)).toString();
      }
      if (operand == "tan-1") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * 1 / tan(num2)).toString();
      }
      if (operand == "log-1") {
        if (num1 == 0.0) return num1 = 1;
        _output = (num1 * 1 / log(num2)).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(24.0),
        child: new Text(
          buttonText,
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onPressed: () => buttonPressed(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
          home:  Scaffold(
          appBar:  AppBar(
            title: Text('Calc'),
          ),
          backgroundColor: Colors.black,
          body:  Container(
              child:  Column(
            children: <Widget>[
               Container(
                  alignment: Alignment.centerRight,
                  padding:
                      new EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                  child: new Text(output,
                      style: new TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              new Expanded(
                child: new Divider(),
              ),
              new Column(children: [
                new Row(children: [
                  buildButton("sin"),
                  buildButton("cos"),
                  buildButton("tan"),
                  buildButton("log")
                ]),
                new Row(children: [
                  buildButton("sin-1"),
                  buildButton("cos-1"),
                  buildButton("tan-1"),
                  buildButton("log-1")
                ]),
                new Row(children: [
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("/")
                ]),
                new Row(children: [
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("X")
                ]),
                new Row(children: [
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("-")
                ]),
                new Row(children: [
                  buildButton("."),
                  buildButton("0"),
                  buildButton("00"),
                  buildButton("+")
                ]),
                new Row(children: [
                  buildButton("CLEAR"),
                  buildButton("="),
                ])
              ])
            ],
          ))),
    );
  }
}
