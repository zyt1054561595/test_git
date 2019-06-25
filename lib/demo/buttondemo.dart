import 'package:flutter/material.dart';

class buttonDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final Widget buttonBarDemo = Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Theme(
data: Theme.of(context).copyWith(
  buttonTheme: ButtonThemeData(
    // padding: EdgeInsets.all(8.0),
    padding: EdgeInsets.symmetric(horizontal: 32.0),
  ),
),
child: ButtonBar(
children: <Widget>[
  OutlineButton(
child: Text('data'),
onPressed: (){},
splashColor: Colors.grey[100],
borderSide: BorderSide(
  color: Colors.black,
),
textColor: Colors.green,
highlightedBorderColor: Colors.green,
  ),
  OutlineButton(
child: Text('data'),
onPressed: (){},
splashColor: Colors.grey[100],
borderSide: BorderSide(
  color: Colors.black,
),
textColor: Colors.green,
highlightedBorderColor: Colors.green,
  ),
],
),
),
],
      );
    final Widget expandedButtonDemo = Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Expanded(
// width: 130.0,
 child: OutlineButton(
child: Text('data'),
onPressed: (){},
splashColor: Colors.grey[100],
borderSide: BorderSide(
  color: Colors.black,
),
textColor: Colors.green,
highlightedBorderColor: Colors.green,
),
  ),
  SizedBox(width: 16.0,),
  Expanded(
    flex: 2,
// width: 130.0,
 child: OutlineButton(
child: Text('data'),
onPressed: (){},
splashColor: Colors.grey[100],
borderSide: BorderSide(
  color: Colors.black,
),
textColor: Colors.green,
highlightedBorderColor: Colors.green,
),
  ),
],
      );

    final Widget fixedWidthButtonDemo =  Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Container(
width: 130.0,
 child: OutlineButton(
child: Text('data'),
onPressed: (){},
splashColor: Colors.grey[100],
borderSide: BorderSide(
  color: Colors.black,
),
textColor: Colors.green,
highlightedBorderColor: Colors.green,
),
  ),
],
      );
    final Widget outLineButtonDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
buttonTheme: ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
//   shape: BeveledRectangleBorder(
// borderRadius: BorderRadius.circular(5.0),
//   ),
shape: StadiumBorder(),
),
            ),
            child: OutlineButton(
child: Text('data'),
onPressed: (){},
splashColor: Colors.grey[100],
borderSide: BorderSide(
  color: Colors.black,
),
textColor: Colors.green,
// highlightColor: Colors.blueAccent,
highlightedBorderColor: Colors.green,
// elevation: 0.0,
// color: Theme.of(context).accentColor,
// textColor: Colors.white,
// textTheme: ButtonTextTheme.primary,
),
          ),
// RaisedButton(
// child: Text('data'),
// onPressed: (){},
// splashColor: Colors.grey,
// color: Theme.of(context).accentColor,
// // textColor: Colors.white,
// textTheme: ButtonTextTheme.primary,
// ),
SizedBox(width: 16.0,),
OutlineButton.icon(
  icon: Icon(Icons.add),
label: Text('data'),
onPressed: (){},
splashColor: Colors.grey,
textColor: Theme.of(context).accentColor,
// elevation: 12.0,
),
        ],
      );
    final Widget flatButtonDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
buttonTheme: ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
//   shape: BeveledRectangleBorder(
// borderRadius: BorderRadius.circular(5.0),
//   ),
shape: StadiumBorder(),
),
            ),
            child: RaisedButton(
child: Text('data'),
onPressed: (){},
splashColor: Colors.grey,
elevation: 0.0,
// color: Theme.of(context).accentColor,
// textColor: Colors.white,
// textTheme: ButtonTextTheme.primary,
),
          ),
// RaisedButton(
// child: Text('data'),
// onPressed: (){},
// splashColor: Colors.grey,
// color: Theme.of(context).accentColor,
// // textColor: Colors.white,
// textTheme: ButtonTextTheme.primary,
// ),
SizedBox(width: 16.0,),
RaisedButton.icon(
  icon: Icon(Icons.add),
label: Text('data'),
onPressed: (){},
splashColor: Colors.grey,
textColor: Theme.of(context).accentColor,
elevation: 12.0,
),
        ],
      );
    return Scaffold(
appBar: AppBar(
  title: Text('data'),
  elevation: 0.0,
),
body: Container(
  padding: EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      buttonBarDemo,
expandedButtonDemo,
      fixedWidthButtonDemo,
      flatButtonDemo,
      outLineButtonDemo,
    ],
  ),
),
      // child: child,
    );
  }
}