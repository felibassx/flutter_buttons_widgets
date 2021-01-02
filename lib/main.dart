import 'package:buttons_wdget/widgets/button_avatar_widget.dart';
import 'package:buttons_wdget/widgets/button_border_icon_widget.dart';
import 'package:buttons_wdget/widgets/button_icon_desktop_widget.dart';
import 'package:buttons_wdget/widgets/buttons_pinterest_widgets.dart';
import 'package:buttons_wdget/widgets/button_info_widget.dart';
import 'package:buttons_wdget/widgets/button_rounded_widget.dart';
import 'package:buttons_wdget/widgets/button_social_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Items para la botonera Pinterest
  final List<PinterestButton> items = [
    PinterestButton(
        icon: Icons.pie_chart,
        onPressed: () {
          print('Icon pie_chart');
        }),
    PinterestButton(
        icon: Icons.search,
        onPressed: () {
          print('Icon search');
        }),
    PinterestButton(
        icon: Icons.notifications,
        onPressed: () {
          print('Icon notifications');
        }),
    PinterestButton(
        icon: Icons.supervised_user_circle,
        onPressed: () {
          print('Icon supervised_user_circle');
        }),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Botones',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          elevation: 0.0,
          backgroundColor: Colors.blue[800],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonRoundedWidget(
                  textButton: 'Entrar',
                  backgroudColor: Colors.redAccent,
                  widthButton: 300,
                  onPressed: () {
                    print('Click button rounded');
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ButtonSocialWidget(
                        ontap: () {
                          print('Click Social');
                        },
                        socialIcon: FontAwesomeIcons.facebook,
                        iconColor: Colors.white,
                        backgroudColor: Colors.blue,
                        sizeButton: 120,
                      ),
                      ButtonSocialWidget(
                        ontap: () {
                          print('Click Social');
                        },
                        socialIcon: FontAwesomeIcons.google,
                        iconColor: Colors.white,
                        backgroudColor: Colors.red,
                        sizeButton: 120,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonAvatarOnlineWidget(
                      imgUrl:
                          'https://images.pexels.com/photos/5331864/pexels-photo-5331864.jpeg',
                      online: true,
                      sizeBox: 100,
                      onTap: () {
                        print('Click Avatar');
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ButtonAvatarOnlineWidget(
                      imgUrl:
                          'https://images.pexels.com/photos/3695801/pexels-photo-3695801.jpeg',
                      online: false,
                      sizeBox: 100,
                      onTap: () {
                        print('Click Avatar');
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ButtonAvatarOnlineWidget(
                      imgUrl:
                          'https://images.pexels.com/photos/1977055/pexels-photo-1977055.jpeg',
                      online: false,
                      sizeBox: 100,
                      isBorder: false,
                      onTap: () {
                        print('Click Avatar');
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ButtonInfoWidget(
                  textButton: 'Botón informativo',
                  imageUrl:
                      'https://images.pexels.com/photos/1977055/pexels-photo-1977055.jpeg',
                  onTap: () {
                    print('Click Info');
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                ButtonBorderIconWidget(
                  textButton: 'Botón Borde',
                  icon: Icons.ac_unit_outlined,
                  buttonColor: Colors.blue[800],
                  onPressed: () => print('Button border click'),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonIconDesktopWidget(
                      icon: Icons.folder,
                      text: 'Mi carpeta',
                      size: 80,
                      onTap: () => print('carpeta click'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ButtonIconDesktopWidget(
                      colorIcon: Colors.blue,
                      icon: FontAwesomeIcons.fileWord,
                      text: 'Documento',
                      size: 80,
                      onTap: () => print('Documento click'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ButtonIconDesktopWidget(
                      colorIcon: Colors.red,
                      icon: FontAwesomeIcons.filePdf,
                      text: 'My CV',
                      size: 80,
                      onTap: () => print('My CV click'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ButtonsPinterestWidget(
                  items: items,
                  backgroundColor: Colors.deepPurple[900],
                  activeColor: Colors.amber,
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
