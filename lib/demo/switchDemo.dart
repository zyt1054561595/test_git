// import 'dart:core' as prefix0;

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
class DateTimeDemoState extends StatefulWidget {
  DateTimeDemoState({Key key}) : super(key: key);

  _DateTimeDemoStateState createState() => _DateTimeDemoStateState();
}

class _DateTimeDemoStateState extends State<DateTimeDemoState> {

 DateTime selectedDate = DateTime.now();

TimeOfDay  selectedTime = TimeOfDay(hour: 9 ,minute:  30);
// final DateTime  selectDate = DateTime.now();
Future<void> _selectedDate() async{

final DateTime date = await showDatePicker(
context: context,
initialDate: selectedDate,
firstDate: DateTime(1900),
lastDate: DateTime(2100),
);
if (date == null) return null;
setState(() {
  selectedDate = date;
});
}

Future<String> _selectedTime() async{
  final TimeOfDay time = await showTimePicker(
context: context,
initialTime: selectedTime,
  );
  if (time == null) return null;
  setState(() {
    selectedTime = time;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
            onTap: _selectedDate,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(DateFormat.yMMMMd().format(selectedDate)),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            ),
            InkWell(
            onTap: _selectedTime,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(selectedTime.format(context)),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            ),
          ],
        ),
      ),
      //  child: child,
    );
  }
}

class SliderDemo extends StatefulWidget {
  // SliderDemo({Key key}) : super(key: key);

  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {

double _siliderItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
  title: Text('sliderDemo'),
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
Slider(
value: _siliderItemA,
activeColor: Theme.of(context).accentColor,
inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
onChanged: (value) {
setState(() {
  _siliderItemA = value;
});
},
min: 0.0,
max: 10.0,
divisions: 10,
label: '${_siliderItemA.toInt()}',
),
SizedBox(height: 20,),
Text('sliderDemo$_siliderItemA'),

],
      ),
    ],
  ),
    ),
    );
  }
}


class switchDemo extends StatefulWidget {
  // switchDemo({Key key}) : super(key: key);

  _switchDemoState createState() => _switchDemoState();
}

class _switchDemoState extends State<switchDemo> {

bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
  title: Text('switchdemo'),
  elevation: 0.0,
),
body: Container(
  padding: EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
     SwitchListTile(
       value: _switchItemA,
       onChanged: (value) {
         setState(() {
         _switchItemA = value;
         });
       },
       title: Text('Switch Item A '),
       subtitle: Text('Descriotion'),
       secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
       selected: _switchItemA,
     ),

      Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
//   Text(_switchItemA ? '😁' :'😭',style: TextStyle(fontSize: 32.0),),
//   Switch(
// value: _switchItemA,
// onChanged: (value){
//   setState(() {
//     _switchItemA = value;
//   });
// },

  // ),
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