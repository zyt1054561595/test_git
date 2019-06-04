import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class layoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        // stackDemo(),
        // AspectRatioDemo(),
        constrainerBoxDemo(),

//         AspectRatio(
//           aspectRatio: 16.0/9.0,
// child: Container(
//   color: Color.fromRGBO(3, 54, 255, 1.0),
// ),
        // ),
    // IconBadge(Icons.pool,size: 28.0),
    // IconBadge(Icons.terrain,size: 64.0),
    // IconBadge(Icons.ac_unit,size: 10.0),
    //   IconBadge(Icons.dashboard,size: 33.0),
      ],
    ),
    );
  }
}


//  Positioned(
// right: 20,
// top: 10,
// child: Icon(Icons.brightness_2, color:Colors.white size:16.0),
//         ),
//                 Positioned(
// right: 70,
// top: 80,
// child: Icon(Icons.brightness_2, color:Colors.white size:16.0),
//         ),

//                 Positioned(
// right: 20,
// top: 180,
// child: Icon(Icons.brightness_2, color:Colors.white size:16.0),
//         ),

//                 Positioned(
// right: 70,
// top: 280,
// child: Icon(Icons.brightness_2, color:Colors.white size:16.0),
//         ),

class constrainerBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
constraints: BoxConstraints(
  minHeight: 200,
  // maxWidth: 200,
),
child: Container(
  color: Color.fromRGBO(3, 54, 255, 1.0),
),
        );
  }
}


class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16.0/9.0,
child: Container(
  color: Color.fromRGBO(3, 54, 255, 1.0),
),
    );
  }
}

class stackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            SizedBox(
          child: Container(
            alignment: Alignment.bottomLeft,
            width: 200.0,
            height: 300.0,
            decoration: BoxDecoration(
            color: Color.fromRGBO(3, 54, 255, 1.0),
            borderRadius: BorderRadius.circular(8.0),
            // shape: BoxShape.circle,
            // gradient: RadialGradient(
            //   colors: [
            //     Color.fromRGBO(7, 102, 255, 1.0),
            //     Color.fromRGBO(3, 54, 255, 1.0),
            //   ],
            // ),
            ),

            child: Icon(Icons.ac_unit ,color: Colors.white ,size: 45.0),
          ),
        ),
       
SizedBox(
  height: 32.0,
),
                SizedBox(
          child: Container(
            width: 50.0,
            height: 100.0,
            decoration: BoxDecoration(
            color: Color.fromRGBO(3, 54, 255, 1.0),
            borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(Icons.brightness_2 ,color: Colors.white ,size: 45.0),
          ),
        ),
          ],
        )
    // IconBadge(Icons.pool,size: 28.0),
    // IconBadge(Icons.terrain,size: 64.0),
    // IconBadge(Icons.ac_unit,size: 10.0),
    //   IconBadge(Icons.dashboard,size: 33.0),
      ;
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;
IconBadge(this.icon,{
this.size = 32.0,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Icon(icon,size:size,color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}