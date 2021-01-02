import 'package:flutter/material.dart';

class ButtonIconDesktopWidget extends StatelessWidget {
  final double size;
  final Color colorIcon;
  final String text;
  final IconData icon;
  final Function onTap;

  ButtonIconDesktopWidget(
      {this.size = 80,
      this.colorIcon = Colors.yellow,
      @required this.text,
      @required this.icon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Column(
          children: [
            Icon(
              this.icon,
              color: this.colorIcon,
              size: this.size,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              this.text,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: this.size * 0.17),
            )
          ],
        ),
      ),
    );
  }
}
