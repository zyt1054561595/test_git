import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'counter_homeDemo.dart';
class blocDemo extends StatelessWidget {
  const blocDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return inheritedCounterBloc(
      bloc: counterBloc(),
child: Scaffold(
      appBar:  AppBar(
        title: Text('blocDemo'),
        elevation: 0.0,
      ),
      body: counterHomeDemo(),
      floatingActionButton: counterActionButton(),
    ),
    );
  }
}

