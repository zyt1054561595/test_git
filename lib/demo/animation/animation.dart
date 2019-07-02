import 'package:flutter/material.dart';
import 'dart:async';


class animationDemo extends StatelessWidget {
  const animationDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animationDemo'),
        elevation: 0.0,
      ),
      body: animationHomeDemo(),
    );
  }
}

class animationHomeDemo extends StatefulWidget {
  animationHomeDemo({Key key}) : super(key: key);

  _animationHomeDemoState createState() => _animationHomeDemoState();
}

class _animationHomeDemoState extends State<animationHomeDemo> with TickerProviderStateMixin{

AnimationController animationController;
Animation animation;
Animation animationColor;
CurvedAnimation curve;
@override
  void initState() {
    super.initState();
    animationController = AnimationController(
      // value: 32,
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 5000,),
      vsync: this,
    );
curve = CurvedAnimation(curve: Curves.bounceIn , parent: animationController);
  animation = Tween(begin: 32.0 ,end: 100.0).animate(curve);
animationColor = ColorTween(begin: Colors.red , end: Colors.black).animate(curve);
    // animationController.addListener(() {
    //   // print('${animationController.value}');
    //   setState(() {
        
    //   });
    // });

    animationController.addStatusListener((AnimationStatus status){
      print('${status}');

    });

    // animationController.forward();


  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: animationHeart(
        animations: [
          animation,
          animationColor,
        ],
        controller: animationController,
      ),
      
    //   child: ActionChip(
    //   label: Text('${animationController.value}'),
    //   onPressed: (){
    //     animationController.forward();
    //   },
    // ),
    );
  }
}


class animationHeart extends AnimatedWidget{

final List animations;
final AnimationController controller;

 animationHeart({
this.animations,
this.controller,
}) : super(listenable: controller);

@override
Widget build(BuildContext context) {

  return IconButton(
        icon: Icon(Icons.favorite),
        color: animations.last.value,
        iconSize: animations.first.value,
        onPressed: (){
                switch (controller.status) {
        case AnimationStatus.completed:
          controller.reverse();
          break;
        default:
        controller.forward();
      }
          // animationController.forward();
        },
        );
}

}