import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CalculatorButton.dart';

const Color numColor = Color(0xff8ac4d0);
const Color funColor = Color(0xffff44aa);

void main() => runApp(Calculator());

class Calculator extends StatefulWidget {
  //const Calculator({Key key}) : super(key: key);
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double firstNum = 0;
  double secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String tempResult = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);

    if (btnVal == 'C') {
      textToDisplay = '';
      tempResult = '';
      firstNum = 0;
      secondNum = 0;
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      tempResult = '';
      firstNum = 0;
      secondNum = 0;
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        tempResult = '-' + textToDisplay;
      } else {
        tempResult = textToDisplay.substring(1);
      }
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = double.parse(textToDisplay);
      tempResult = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = double.parse(textToDisplay);
      if (operation == '+') {
        tempResult = (firstNum + secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }

      if (operation == '-') {
        tempResult = (firstNum - secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }

      if (operation == 'X') {
        tempResult = (firstNum * secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }

      if (operation == '/') {
        tempResult = (firstNum / secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }
    } else {
      tempResult = double.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = tempResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        //accentColor: Color(0x55ffffff),
      ), //ThemeData(primarySwatch: Colors.pink),
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Evanstron'),
              Text(
                'Calculator',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Container(
            //height: MediaQuery.of(context).size.width,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment(1, 1),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    history,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment(1, 1),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    textToDisplay,
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: Color(0xff8ac4d0),
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: Color(0xff8ac4d0),
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '<',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: funColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: funColor,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '7',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '9',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'x',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: funColor,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '4',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '6',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: funColor,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '1',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '3',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: funColor,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '.',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: numColor,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fontSize: 40,
                  textColor: Colors.black,
                  buttonColor: funColor,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
