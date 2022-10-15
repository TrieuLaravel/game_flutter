import 'package:flutter/material.dart';

class PointGame extends StatelessWidget {
  const PointGame({Key? key, required this.point}) : super(key: key);
  final int point;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 25,
        child:InkWell(
          borderRadius: BorderRadius.circular(30.0),
          onTap: () {},
          child: Ink(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.only(left: 80.0,right: 80.0,top: 15.0,bottom: 15.0,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:const Color.fromRGBO(134, 0, 179, 1),
              ),
              child: Text(
                  point.toString(),
                  style:const TextStyle(fontSize:24.0)),
            ),
          ),
        )
    );
  }
}
