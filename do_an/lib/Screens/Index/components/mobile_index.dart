import 'package:do_an/Screens/Index/components/Widget/ink_well_custom.dart';
import 'package:do_an/Screens/Index/components/Widget/widget_diem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';
import 'package:do_an/Screens/Login/login_screen.dart';

import '../../Play/play_game.dart';
class MobileIndex extends StatelessWidget {
  const MobileIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: defaultPadding),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               WidgetDiem(),
             ],
           ),
          const SizedBox(height: defaultPadding),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SvgPicture.asset("image/icons/signup.svg"),
                SafeArea(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200.0,
                        child:ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const PlayGame()
                              ),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              const Icon(
                                size:50.0,
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                              Text(
                                "Chơi Ngay".toUpperCase(),
                              ),
                            ],

                          ),
                        ),
                      ),
                      const SizedBox(height: 50.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWellCustom(icon:const FaIcon(FontAwesomeIcons.volumeHigh),data:const LoginScreen()),
                          InkWellCustom(icon:const FaIcon(FontAwesomeIcons.chartSimple),data:const LoginScreen()),
                          InkWellCustom(icon:const FaIcon(FontAwesomeIcons.users),data:const LoginScreen()),
                          InkWellCustom(icon:const FaIcon(FontAwesomeIcons.gears),data:const LoginScreen()),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
