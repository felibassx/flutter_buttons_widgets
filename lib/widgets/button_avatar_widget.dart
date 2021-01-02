import 'package:flutter/material.dart';

class ButtonAvatarOnlineWidget extends StatelessWidget {
  final String imgUrl;
  final bool online;
  final double sizeBox;
  final bool isBorder;
  final bool isOnlineIndiacator;
  final Function onTap;

  const ButtonAvatarOnlineWidget(
      {@required this.imgUrl,
      @required this.online,
      this.sizeBox = 75,
      this.isBorder = true,
      this.isOnlineIndiacator = true,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: (isBorder)
          ? Container(
              width: this.sizeBox,
              height: this.sizeBox,
              child: Stack(
                children: [
                  Container(
                    width: this.sizeBox,
                    height: this.sizeBox,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.green)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        width: this.sizeBox - 3,
                        height: this.sizeBox - 3,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: this.imgUrl == ""
                                    ? AssetImage(
                                        'assets/icons_png/icono-web.png')
                                    : NetworkImage(this.imgUrl))),
                      ),
                    ),
                  ),
                  (this.isOnlineIndiacator)
                      ? _buildOnlineIndicator(this.online)
                      : Container()
                ],
              ),
            )
          : Container(
              width: this.sizeBox,
              height: this.sizeBox,
              child: Stack(
                children: [
                  Container(
                    width: this.sizeBox - 3,
                    height: this.sizeBox - 3,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(this.imgUrl))),
                  ),
                ],
              ),
            ),
    );
  }

  Positioned _buildOnlineIndicator(bool online) {
    return Positioned(
      bottom: this.sizeBox * 0.10,
      left: this.sizeBox * 0.73,
      child: Container(
        width: this.sizeBox * 0.30,
        height: this.sizeBox * 0.25,
        decoration: BoxDecoration(
            color: (online) ? Colors.green : Colors.grey,
            shape: BoxShape.circle,
            border:
                Border.all(width: this.sizeBox * 0.030, color: Colors.white)),
      ),
    );
  }
}
