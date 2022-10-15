import 'package:flutter/material.dart';

class QuestionGame extends StatelessWidget {
  const QuestionGame({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Card(
        child: ClipPath(
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3)
            ),
          ),
          child: Container(
            width: double.infinity,
            padding:const EdgeInsets.only(left:15.0,right:15.0,top:50.0,bottom:30.0),
            decoration:const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.greenAccent, width: 5),
                  bottom: BorderSide(color: Colors.greenAccent, width: 5),
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
            child:Text(text, style:const TextStyle(color: Colors.white,fontSize: 18.0,),
            ),
          ),
        ),
      ),
    );
  }
}
