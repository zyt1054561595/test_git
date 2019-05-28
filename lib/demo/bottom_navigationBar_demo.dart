import 'package:flutter/material.dart';

class BottomnavigationBardemo extends StatefulWidget{

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomnavigationDemoStare();
  }

}

class _BottomnavigationDemoStare extends State<BottomnavigationBardemo>{
    int _currentIndex = 0;

  void _onTapHandler (int index){
  setState((){
    _currentIndex = index;
  });
  }

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          items: [
            BottomNavigationBarItem(
icon: Icon(Icons.explore),
title: Text('data'),
            ),
            BottomNavigationBarItem(
icon: Icon(Icons.history),
title: Text('data'),
            ),
            BottomNavigationBarItem(
icon: Icon(Icons.multiline_chart),
title: Text('data'),
            ),
            BottomNavigationBarItem(
icon: Icon(Icons.multiline_chart),
title: Text('data'),
            ),
          ],
        );
  }
}