import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InkWellCustom extends StatelessWidget {
  InkWellCustom({Key? key, required this.icon,required this.data}) : super(key: key);
  FaIcon icon;
  Widget data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.0),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => data
          ),
        );
      },
      child: Ink(
        padding: const EdgeInsets.all(10),
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
