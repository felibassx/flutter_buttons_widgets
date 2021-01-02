import 'package:buttons_wdget/utils/string_utils.dart';
import 'package:flutter/material.dart';

class ButtonInfoWidget extends StatelessWidget {
  final String imageUrl;
  final String textButton;
  final Color textColor;
  final Color backgroundColor;
  final Color shadowColor;
  final double boxSize;
  final Function onTap;

  const ButtonInfoWidget({
    this.boxSize = 300.0,
    this.onTap,
    @required this.imageUrl,
    @required this.textButton,
    this.textColor = Colors.black54,
    this.backgroundColor = Colors.white,
    this.shadowColor = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Container(
              width: this.boxSize * 0.20,
              height: this.boxSize * 0.20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(this.imageUrl))),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                cutText(this.textButton, 15),
                style: TextStyle(
                  color: this.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: this.boxSize * 0.070,
                ),
              ),
            )
          ],
        ),
        width: this.boxSize,
        height: 80,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: this.shadowColor,
                  offset: Offset(0, 2),
                  blurRadius: 2.0)
            ],
            color: this.backgroundColor,
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
