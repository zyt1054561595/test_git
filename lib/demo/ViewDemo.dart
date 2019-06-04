import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text('data'),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text('data1'),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text('data2'),
        ),
      ],
    );
  }
}


