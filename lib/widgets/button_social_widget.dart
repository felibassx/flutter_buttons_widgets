import 'package:flutter/material.dart';

class ButtonSocialWidget extends StatelessWidget {
  final Function ontap;
  final Color iconColor;
  final IconData socialIcon;
  final double sizeIcon;
  final Color backgroudColor;
  final double sizeButton;

  ButtonSocialWidget(
      {@required this.ontap,
      @required this.socialIcon,
      @required this.iconColor,
      this.sizeIcon = 65,
      this.backgroudColor = Colors.transparent,
      this.sizeButton = 60});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: this.sizeButton,
        width: this.sizeButton,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: this.backgroudColor,
          boxShadow: [
            BoxShadow(
                color: Colors.transparent,
                offset: Offset(0, 2),
                blurRadius: 6.0)
          ],
        ),
        child: Icon(
          this.socialIcon,
          size: this.sizeButton * 0.80,
          color: this.iconColor,
        ),
      ),
    );
  }
}
