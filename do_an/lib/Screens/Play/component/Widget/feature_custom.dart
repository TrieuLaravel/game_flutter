import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InkWellCustom extends StatelessWidget {
  InkWellCustom({Key? key,required this.data,required this.icon}) : super(key: key);
  Widget data;
  FaIcon icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.0),
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:10.0, bottom:10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color:const Color.fromRGBO(134, 0, 179, 1),
          ),
          padding: const EdgeInsets.all(20.0),
          child:icon,
        ),
      ),
    );
  }
}