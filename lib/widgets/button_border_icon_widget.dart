import 'package:flutter/material.dart';

class ButtonBorderIconWidget extends StatelessWidget {
  final String textButton;
  final double sizeButton;
  final Color buttonColor;
  final IconData icon;
  final Function onPressed;
  const ButtonBorderIconWidget(
      {this.onPressed,
      this.buttonColor = Colors.green,
      @required this.textButton,
      this.sizeButton = 300,
      this.icon = Icons.smartphone_sharp});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.sizeButton,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: this.buttonColor, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: RaisedButton(
        color: Colors.white,
        disabledColor: Colors.white,
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              this.icon,
              color: this.buttonColor,
              size: this.sizeButton * 0.090,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              this.textButton,
              style: TextStyle(
                  color: this.buttonColor,
                  letterSpacing: 1.5,
                  fontSize: this.sizeButton * 0.060,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'OpenSans'),
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
