import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  /*const CalculatorWidget({
    Key? key,
  }) : super(key: key);*/
  final String text;
  final Color textColor;
  final Color buttonColor;
  final double fontSize;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.fontSize,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(fontSize: fontSize, color: textColor),
            ),
            onPressed: () => callback,
          ),
        ),
      ),
    );
  }
}
