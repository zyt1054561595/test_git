import 'package:flutter/material.dart';

class checkBoxDewmo extends StatefulWidget {
  // checkBoxDewmo({Key key}) : super(key: key);

  _checkBoxDewmoState createState() => _checkBoxDewmoState();
}

class _checkBoxDewmoState extends State<checkBoxDewmo> {

bool cheboxA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
  title: Text('checkBoxDemo'),
  elevation: 0.0,
),
body: Container(
  padding: EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CheckboxListTile(
value: cheboxA,
onChanged: (value) {
  setState(() {
    cheboxA = value;
  });
},
title: Text('cheBox item A'),
subtitle: Text('description'),
secondary: Icon(Icons.bookmark),
selected: cheboxA,
      ),
      Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
// Checkbox(
// value: cheboxA,
// onChanged: (value) {
//   setState(() {
//     cheboxA = value;
//   });
// },
// activeColor: Colors.black,
// ),
],
      ),
    ],
  ),
    ),
    );
  }
}