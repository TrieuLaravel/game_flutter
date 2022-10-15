import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class WidgetDiem extends StatelessWidget {
  get borderRadius => BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 10,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding:const EdgeInsets.all(0.0),
            height: 40.0,//MediaQuery.of(context).size.width * .08,
            width: 160.0,//MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
            ),
            child: Row(
              children: <Widget>[
                LayoutBuilder(builder: (context, constraints) {
                  // print(constraints);
                  return Container(
                    height: constraints.maxHeight,
                    width: constraints.maxHeight,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: borderRadius,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:const <Widget>[
                        FaIcon(
                            FontAwesomeIcons.sackDollar
                        ),
                      ],
                    ),
                  );
                }),
                const Expanded(
                  child: Text(
                    '500',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}