import 'package:flutter/material.dart';

class InkWellCustom extends StatefulWidget {
  InkWellCustom({Key? key,required this.text,required this.check}) : super(key: key);
  String text;
  bool check;

  @override
  State<InkWellCustom> createState() => _InkWellCustomState();
}

class _InkWellCustomState extends State<InkWellCustom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.0),
      onTap: () {
        if(widget.check){
          AlertDialog alert = AlertDialog(
            content: Text(widget.check.toString()),
          );
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        }
      },
      child: Ink(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:10.0, bottom:10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color:const Color.fromRGBO(134, 0, 179, 1),
          ),
          padding: const EdgeInsets.all(20.0),
          child:Text(
            widget.text,
            style:const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

