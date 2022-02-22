import 'package:flutter/material.dart';

class FlashButton extends StatelessWidget {
  final Function onPress;
  final String buttonText;
  final Color buttonColor;

  FlashButton({this.buttonText, this.buttonColor, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
