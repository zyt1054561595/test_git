import 'package:flutter/material.dart';


class PopupMenbuButtonDemo extends StatefulWidget {
  // PopupMenbuButtonDemo({Key key}) : super(key: key);

  _PopupMenbuButtonDemo createState() => _PopupMenbuButtonDemo();
}

class _PopupMenbuButtonDemo extends State<PopupMenbuButtonDemo> {
  String _currentMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('PopupMenuDemo'),
  elevation: 0.0,
),
body: Container(
  padding: EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_currentMenuItem),
PopupMenuButton(

  onSelected: (value){
    print(value);
    setState(() {
      _currentMenuItem = value;
    });
  },
itemBuilder: (BuildContext context) =>  [
  PopupMenuItem(
child: Text('data'),
value: 'Home',
  ),
    PopupMenuItem(
child: Text('discover'),
value: 'discover',
  ),
    PopupMenuItem(
child: Text('community'),
value: 'community',
  ),
],
),
        ],
      ),
    ],
  ),
),
      // child: child,
    );
  }
}