import 'package:flutter/material.dart';

class chipDemo extends StatefulWidget {
  chipDemo({Key key}) : super(key: key);

  _chipDemoState createState() => _chipDemoState();
}

class _chipDemoState extends State<chipDemo> {

List<String> _tags = ['apple' ,'banana' ,'lemon'];

List<String> _selected = [];

String choiceChip = 'apple';

String actionChip = 'nothings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chipDemo'),
elevation: 0.0,
      ),
body: Container(
  padding: EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Wrap(
        spacing: 8.0,
        runSpacing: 0.0,
// mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Chip(
    label: Text('life'),
    backgroundColor: Colors.orange,
    avatar: CircleAvatar(
      backgroundColor: Colors.black,
      child: Text('永'),
    ),
  ),
  Chip(
    label: Text('sunset'),
    backgroundColor: Colors.red,
    avatar: CircleAvatar(
      backgroundColor: Colors.green,
      child: Text('涛'),
    ),
  ),
  Chip(
label: Text('data'),
avatar: CircleAvatar(
  backgroundImage: NetworkImage('https://resources.ninghao.net/images/wanghao.jpg'),
),
  ),
  Chip(
label: Text('张'),
avatar: CircleAvatar(
  backgroundImage: NetworkImage('https://resources.ninghao.net/images/wanghao.jpg'),
),
  ),
  Chip(
label: Text('住'),
avatar: CircleAvatar(
  backgroundImage: NetworkImage('https://resources.ninghao.net/images/wanghao.jpg'),
),
  ),
Chip(
label: Text('city'),
onDeleted: (){},
deleteIconColor: Colors.redAccent,
deleteButtonTooltipMessage: 'remove this tag',
),

Divider(
  color: Colors.grey,
  height: 32.0,
),

Wrap(
spacing: 8.0,
children: _tags.map((tag){
  return Chip(
    label: Text(tag),
    onDeleted: () {
      setState(() {
        _tags.remove(tag);
      });
    },
  );
}
  
).toList(),
),
Divider(
  color: Colors.grey,
  height: 32.0,
),
Container(
width: double.infinity,
child: Text('actionchip $actionChip'),
),
Wrap(
spacing: 8.0,
children: _tags.map((tag){
  return ActionChip(
    label: Text(tag),
onPressed: (){
setState(() {
  actionChip = tag;
});
},
  );
}
).toList(),
),
Divider(
  color: Colors.grey,
  height: 32.0,
),
Container(
width: double.infinity,
child: Text('filterchip : ${_selected.toString()}'),
),
Wrap(
spacing: 8.0,
children: _tags.map((tag){
  return FilterChip(

    label: Text(tag),
    selected: _selected.contains(tag),
    onSelected: (value) {
      setState(() {
        if (_selected.contains(tag)) {
          _selected.remove(tag);
        } else {
          _selected.add(tag);
        }
      });
    },
  );
}
).toList(),
),
Divider(
  color: Colors.grey,
  height: 32.0,
),
Container(
width: double.infinity,
child: Text('chioce : $choiceChip'),
),
Wrap(
spacing: 8.0,
children: _tags.map((tag){
  return ChoiceChip(
selectedColor: Colors.blue,
selectedShadowColor: Colors.black,

    label: Text(tag),
    selected: choiceChip == tag,
    onSelected: (value) {
      setState(() {
        choiceChip = tag;
      });
    },
  );
}
).toList(),
),
],
      ),
    ],
  ),
),
floatingActionButton: FloatingActionButton(
  child: Icon(Icons.restore),
  onPressed: (){
    setState(() {
      _tags = ['apple','banana','lemon'];
    });
    _selected = [];
    choiceChip = 'apple';
  },
),

    );
  }
}
