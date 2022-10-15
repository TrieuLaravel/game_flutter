import 'package:do_an/Screens/Index/index_screen.dart';
import 'package:do_an/Screens/Play/component/Widget/answer_game.dart';
import 'package:do_an/Screens/Play/component/Widget/point_game.dart';
import 'package:do_an/Screens/Play/component/Widget/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../Index/components/Widget/ink_well_custom.dart';

class MobilePlayGame extends StatelessWidget {
  const MobilePlayGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor:const Color.fromARGB(100,252, 70, 107 ),
      appBar: AppBar(
        backgroundColor:const Color(0x44000000),
        elevation: 0,
        // leading: Container(alignment:Alignment.center ,child:const FaIcon(FontAwesomeIcons.circleChevronLeft)),
        // actions: [
        //   Container(
        //       alignment:Alignment.centerLeft ,
        //       child:const FaIcon(FontAwesomeIcons.circleDollarToSlot)
        //   ),
        // ],
      ),
      body:Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/images/Hinh-nen-Vu-Tru.jpg"),
              fit: BoxFit.cover,
          ),
        ),
        child:const PlayGameInit(),
      )
    );
  }
}
class PlayGameInit extends StatefulWidget {
  const PlayGameInit({Key? key}) : super(key: key);

  @override
  State<PlayGameInit> createState() => _PlayGameInitState();
}

class _PlayGameInitState extends State<PlayGameInit> {
  String data='Con chó đen người ta gọi là con chó mực. Con chó vàng, người ta gọi là con chó phèn. Con chó sanh người ta gọi là con chó đẻ. Vậy con chó đỏ, người ta gọi là con chó gì?';
  int point=200;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: defaultPadding),
        const Text('dong ho',style: TextStyle(color: Colors.white),),
        Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              QuestionGame(text:data),
              PointGame(point: point),
            ],
          ),
        ),
        const SizedBox(height:25.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AnswerGame(text:'12 tháng',check: true,),
            AnswerGame(text:'Chuột Míckey',check: false,),
            AnswerGame(text:'Con người',check: false,),
            AnswerGame(text:'Vịt không bị què thì đi bằng 2 chân',check: false,),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Container(
          decoration:const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.greenAccent, width: 5),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              )
          ),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // icon 50:50
              InkWellCustom(data:Index(),icon:FaIcon(FontAwesomeIcons.amazon)),
              InkWellCustom(data:Index(),icon:FaIcon(FontAwesomeIcons.repeat)),
              InkWellCustom(data:Index(),icon:FaIcon(FontAwesomeIcons.lightbulb)),
            ],
          ),
        ),
      ],
    );
  }
}