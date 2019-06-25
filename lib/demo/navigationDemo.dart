import 'package:flutter/material.dart';

class navigationDemo extends StatelessWidget {
  const navigationDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
child: Text('data1'),
onPressed: null,
            ),
                        FlatButton(
child: Text('data2'),
onPressed: null,
            ),
                        FlatButton(
child: Text('data3'),
onPressed: (){
  Navigator.pushNamed(context, '/data3');
//   Navigator.of(context).push(
//     MaterialPageRoute(
// builder: (BuildContext context) => Page(title: 'data3'),
//     ),
//   );
},
            ),
          ],
        ),
      ),
    );
  }
}


class Page extends StatelessWidget {
final String title;

Page({
  this.title
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}