import 'package:flutter/material.dart';

class ButtonRoundedWidget extends StatelessWidget {
  final Color backgroudColor;
  final Color disabledColor;
  final Color textColor;
  final String textButton;
  final Function onPressed;
  final double widthButton;
  final double fontSize;

  ButtonRoundedWidget(
      {this.backgroudColor = Colors.grey,
      this.disabledColor = Colors.grey,
      this.textColor = Colors.white,
      @required this.textButton,
      @required this.onPressed,
      this.widthButton = 250,
      this.fontSize = 15});

  @override
  Widget build(BuildContext context) {
    return _buildButton();
  }

  Widget _buildButton() {
    return Container(
      width: this.widthButton,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: RaisedButton(
          elevation: 5.0,
          padding: EdgeInsets.all(15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: this.backgroudColor,
          disabledColor: this.disabledColor,
          child: Text(
            this.textButton,
            style: TextStyle(
                color: this.textColor,
                letterSpacing: 1.5,
                fontSize: this.fontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans'),
          ),
          onPressed: this.onPressed),
    );
  }
}
