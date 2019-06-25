import 'package:flutter/material.dart';

class FloactingActionButtonDemo extends StatelessWidget {
  // const FloactingActionButtonDemo({Key key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
final Widget _floatingActionButton = FloatingActionButton(
  onPressed: (){},
  child: Icon(Icons.add),
  elevation: 0.0,
  backgroundColor: Colors.black87,
  // shape: BeveledRectangleBorder(
  //   borderRadius: BorderRadius.circular(30.0),
  // ),
);
final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
onPressed: (){},
icon: Icon(Icons.add),
label: Text('data'),
);
    return Scaffold(
      
      appBar:  AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
