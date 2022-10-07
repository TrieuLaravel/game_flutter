import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Container(
              alignment: const Alignment(0, -0.5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/main.jpg'),
                fit: BoxFit.cover,
              ))),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).size.width *
                0.30, //TRY TO CHANGE THIS **0.30** value to achieve your goal
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.redAccent,
                    ),
                    child: Image.asset('images/logo.png', scale: 2.5),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ViewIndex(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ViewIndex extends StatefulWidget {
  const ViewIndex({Key? key}) : super(key: key);

  @override
  State<ViewIndex> createState() => _ViewIndexState();
}

class _ViewIndexState extends State<ViewIndex> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("tiền"),
          Text("logo"),
          Text("button"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("button"),
              Text("button"),
              Text("button"),
              Text("button"),
            ],
          ),
        ],
      ),
    );
  }
}
