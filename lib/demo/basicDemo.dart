import 'package:flutter/material.dart';

class basicDemo extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return containerBorderStyle();
  }
}


class containerBorderStyle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.red,
      decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
        alignment: Alignment.topCenter,
        // repeat: ImageRepeat.repeatY,
colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight),
        fit: BoxFit.cover,
        // image: AssetImage(''),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
child: Icon(Icons.pool,size: 32.0, color: Colors.white),
// color: Colors.black,
padding: EdgeInsets.all(16.0),
margin: EdgeInsets.only(left: 8.0),
width: 90.0,
height: 90.0,
decoration: BoxDecoration(
// gradient: RadialGradient(
//   colors: [
//     Color.fromRGBO(20, 50, 90, 1.0),
//     Color.fromRGBO(0 , 100, 170, 1.0),
//   ],
// ),
gradient: LinearGradient(
  colors: [
    Color.fromRGBO(20, 50, 90, 1.0),
    Color.fromRGBO(0 , 100, 170, 1.0),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
),
boxShadow: [
BoxShadow(
  offset: Offset(0, 16.0),
  color: Color.fromRGBO(0, 56, 20, .5),
  blurRadius: 25.0,
  spreadRadius: -9.0,
),

],
  color: Colors.blue,
borderRadius: BorderRadius.circular(16.0),

  border: Border(
left: BorderSide(
color: Colors.green,
width: 3.0,
style: BorderStyle.solid,
),
top: BorderSide(
color: Colors.orange,
width: 2.0,
style: BorderStyle.solid,
),
  ),
),
          ),
        ],
      ),
    );
  }
}


class richTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'zyt--nishishenmren',
        style: TextStyle(
color: Colors.red,
fontSize: 13.0,
fontStyle: FontStyle.normal,
fontWeight: FontWeight.w100,
        ),
        children: [
TextSpan(
  text: 'zyt',
  style: TextStyle(
fontSize: 17,
color: Colors.yellow,
fontWeight: FontWeight.w200,
fontStyle: FontStyle.normal,
  ),
),
        ],
      ),
    );
  }
}

class textDemo extends StatelessWidget{
    final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
    fontStyle: FontStyle.normal
  );
final  String _author = '李白';
final  String  _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('《$_title》 - $_author。data本留言道拐不到阿道夫，均不将尴尬不噶开会南渡北归bveufav-0a==bauda',
          style: _textStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
     );
  }
}