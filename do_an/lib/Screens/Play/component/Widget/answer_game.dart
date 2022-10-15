import 'package:do_an/Screens/Play/component/Widget/ink_well_custom.dart';
import 'package:flutter/material.dart';
class AnswerGame extends StatelessWidget {
  AnswerGame({Key? key,required this.text,required this.check}) : super(key: key);
  String text;
  bool check;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        const Divider(
          thickness: 5,
          color: Colors.white,
        ),
        SizedBox(
          width: 300,
          child: InkWellCustom(text: text, check: check),
        ),
      ],
    );
  }
}
