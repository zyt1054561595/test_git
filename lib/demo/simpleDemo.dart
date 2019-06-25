import 'package:flutter/material.dart';
import 'dart:async';

enum Option {
A,B,C,
}

enum Action {
  Ok , 
  Cancel
}


class exPansionPanelItem{
  final String headerText;
  final Widget body;
  bool isExpanded;

  exPansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });

}

class expansionPanelDemo extends StatefulWidget {
  expansionPanelDemo({Key key}) : super(key: key);

  _expansionPanelDemoState createState() => _expansionPanelDemoState();
}

class _expansionPanelDemoState extends State<expansionPanelDemo> {

// bool isExpand = false;
List<exPansionPanelItem> _expansionPanelItems;
  @override
void initState() { 
  super.initState();
  _expansionPanelItems = <exPansionPanelItem>[
    exPansionPanelItem(
      headerText: 'panel A',
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: Text('content for pannel A'), 
      ),
      isExpanded: false,
    ),
    exPansionPanelItem(
      headerText: 'panel B',
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: Text('content for pannel B'), 
      ),
      isExpanded: false,
    ),
    exPansionPanelItem(
      headerText: 'panel C',
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: Text('content for pannel C'), 
      ),
      isExpanded: false,
    ),
  ];
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansionPanelDemo'),
elevation: 0.0,
      ),
      body: Container(
        
        padding: EdgeInsets.all(16.0),
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            ExpansionPanelList(
              expansionCallback: (int pageIndex ,bool isexPanded){
                setState(() {
                //  isExpand = !isexPanded;
                _expansionPanelItems[pageIndex].isExpanded = !isexPanded;
                });
              },
              children: _expansionPanelItems.map(
                (exPansionPanelItem item){
                  return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.body,
                    headerBuilder: (BuildContext context ,bool isExpanded){
return Container(
  padding: EdgeInsets.all(16.0),
  child: Text(item.headerText),
);
                    },
                  );
                }
              ).toList(),
              // children: [
              //   ExpansionPanel(
              //     headerBuilder: (BuildContext context , bool isExpanded){
              //       return Container(
              //         padding: EdgeInsets.all(16.0),
              //         child: Text('panel A',style: Theme.of(context).textTheme.title,),
                      
              //       );
              //     },
              //     body: Container(
              //       padding: EdgeInsets.all(16.0),
              //       width: double.infinity,
              //       child: Text('content for panel A'),
              //     ),
              //     isExpanded: isExpand,
              //   ),
              // ],
            ),
          ],
        ),
      ),
    );
  }
}


class snackBarDemo extends StatefulWidget {
  snackBarDemo({Key key}) : super(key: key);

  _snackBarDemoState createState() => _snackBarDemoState();
}

class _snackBarDemoState extends State<snackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snackBardemo'),
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
  snackBarButton(),
],
            ),
          ],
        ),
      ),
    );
  }
}

class snackBarButton extends StatelessWidget {
  const snackBarButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open snackBar'),
      onPressed: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content:Text('procesing'),
            action:SnackBarAction(
label:'ok',
onPressed:(){},
            ),
          ),
        );
      },
    );
  }
}


class bottomSheetDemo extends StatefulWidget {
  bottomSheetDemo({Key key}) : super(key: key);

  _bottomSheetDemoState createState() => _bottomSheetDemoState();
}

class _bottomSheetDemoState extends State<bottomSheetDemo> {

final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
Future _openModalBottomSheet() async{
 final  option =  await showModalBottomSheet(
context: context,
builder: (BuildContext cntext){
  return Container(
height: 200,
child: Column(
  children: <Widget>[
    ListTile(
      title: Text('option A'),
      onTap: (){
        Navigator.pop(context,'A');
      },
    ),
     ListTile(
      title: Text('option B'),
      onTap: (){
        Navigator.pop(context,'B');
      },
    ),
    ListTile(
      title: Text('option C'),
      onTap: (){
        Navigator.pop(context,'C');
      },
    ),
  ],
),
  );
}
  );
  print('option $option');
}
_openBottomSheet(){
  _bottomSheetScaffoldKey.currentState.showBottomSheet((BuildContext context)
  {
return BottomAppBar(
  child: Container(
    height: 90.0,
    width: double.infinity,
    padding: EdgeInsets.all(16.0),
    child: Row(
      children: <Widget>[
        Icon(Icons.pause_circle_outline),
        SizedBox(width: 16.0,),
        Text('01:03/03:03'),
        Expanded(
child: Text('fix you - coldPlay',textAlign: TextAlign.right,),
        ),
      ],
    ),
  ),
);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('botttomSheetDemo'),
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
FlatButton(
child: Text('open bottomSheet'),
onPressed: _openBottomSheet,
),
FlatButton(
child: Text('modal bottomSheet'),
onPressed: _openModalBottomSheet,
),
    ],
  )
],
        ),
      ),
    );
  }
}


class alertDiologDemo extends StatefulWidget {
  alertDiologDemo({Key key}) : super(key: key);

  _alertDiologDemoState createState() => _alertDiologDemoState();
}

class _alertDiologDemoState extends State<alertDiologDemo> {
String choice = 'Nothing';

Future _openAlertDiolog() async{
final action  =  await showDialog(
context: context,
barrierDismissible: false,
builder: (BuildContext context){

  return AlertDialog(
title: Text('alertDiolog'),
content: Text('are you sure about this'),
actions: <Widget>[
  FlatButton(
child: Text('cancle'),
onPressed: (){
  Navigator.pop(context , Action.Cancel);
},
  ),
  FlatButton(
child: Text('ok' ),
onPressed: (){
Navigator.pop(context, Action.Ok);
},
  ),
],
  );
}
  );

switch (action) {
  case Action.Ok:
    setState(() {
      choice = 'Ok';
    });
    break;

  case Action.Cancel:
setState(() {
  choice = 'Cancle';
});
    break;
  default:
}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alertDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        
        child: Column(
          children: <Widget>[
            Text('alertDiolog is $choice'),
            SizedBox(height: 16.0,),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  RaisedButton(
    child: Text('data'),
    onPressed: _openAlertDiolog,
  ),
],
),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}


class simpleDiologDemo extends StatefulWidget {
  simpleDiologDemo({Key key}) : super(key: key);
  _simpleDiologDemoState createState() => _simpleDiologDemoState();
}

class _simpleDiologDemoState extends State<simpleDiologDemo> {

String choice = 'nothing';

Future _openSimpleDialog() async{
final option =  await showDialog(
context: context,
builder: (BuildContext context){
return SimpleDialog(
title: Text('data'),
children: <Widget>[
  SimpleDialogOption(
child: Text('dataA'),
onPressed: (){
  Navigator.pop(context ,Option.A);
},
  ),
  SimpleDialogOption(
child: Text('dataB'),
onPressed: (){
  Navigator.pop(context ,Option.B);
},
  ),
],
) ; 
}
  );
switch (option) {
  case Option.A: 
    setState(() {
      choice = 'A';
    });
   break;

  case Option.B:
  setState(() {
    choice = 'A';
  });
    break;


  default:
}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('simpleDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text('your choice is : $choice'),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[

],
),
],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
