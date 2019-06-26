import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

// class statemanagement extends StatefulWidget {
//   statemanagement({Key key}) : super(key: key);

//   _statemanagementState createState() => _statemanagementState();
// }

// class _statemanagementState extends State<statemanagement> {

// int _count = 0;
// void _increaseCount() {
//             setState(() {
//           _count += 100;
//           });
//           print('print $_count');
// }
  // @override
  // Widget build(BuildContext context) {

  //       return ScopedModel(
  //         model: counterModel(),
  //         child: Scaffold(
  //     appBar:  AppBar(
  //       title: Text('statemanagementDemo'),
  //       elevation: 0.0,
  //     ),
  //     body: counterWrapper(),
  //     floatingActionButton: FloatingActionButton(
  //       child: Icon(Icons.add),
  //       onPressed: _increaseCount,
  //     ),
  //   ),
  //       );
        
    //     scoped(
    //   count: _count,
    //   increaseCount: _increaseCount,
      
    //   child: Scaffold(
    //   appBar:  AppBar(
    //     title: Text('statemanagementDemo'),
    //     elevation: 0.0,
    //   ),
    //   body: counterWrapper(),
    //   floatingActionButton: FloatingActionButton(
    //     child: Icon(Icons.add),
    //     onPressed: _increaseCount,
    //   ),
    // ),
    // );
    // return counterProvider(
    //   count: _count,
    //   increaseCount: _increaseCount,
      
    //   child: Scaffold(
    //   appBar:  AppBar(
    //     title: Text('statemanagementDemo'),
    //     elevation: 0.0,
    //   ),
    //   body: counterWrapper(),
    //   floatingActionButton: FloatingActionButton(
    //     child: Icon(Icons.add),
    //     onPressed: _increaseCount,
    //   ),
    // ),
    // );
//   }
// }

class counterProvider extends InheritedWidget {
  counterProvider({Key key, this.count, this.increaseCount,this.child}) : super(key: key, child: child);
final int count;
final VoidCallback increaseCount;
final Widget child;


// counterProvider ({
//   this.count,
//   this.increaseCount,
//   this.child,
// }):super(child :child);

  static counterProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(counterProvider)as counterProvider);
  }

  @override
  bool updateShouldNotify( counterProvider oldWidget) {
    return true;
  }
}


class counterWrapper extends StatelessWidget {
  // const counterWrapper({Key key}) : super(key: key);

// final int count ;
// final VoidCallback increaseCount ;
// counterWrapper(this.count , this.increaseCount);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: counter(),
    );
  }
}

class counter extends StatelessWidget {
  // const counter({Key key}) : super(key: key);
// final int count ;
// final VoidCallback increaseCount ;

// counter(this.count , this.increaseCount);
  @override
  Widget build(BuildContext context) {
// final int count = counterProvider.of(context).count;
// final VoidCallback increaseCount = counterProvider.of(context).increaseCount;
    return  ScopedModelDescendant<counterModel>(
      builder: (context ,_, model) =>  ActionChip(
          label: Text('${model.count}'),
          onPressed: model.increaseCount,
        ),
      );
  }
}

class counterModel extends Model{
int _count = 0;
int get count => _count;

void increaseCount() {
  _count += 1;
  notifyListeners();
}

}



class statemanagement extends StatelessWidget {

  // int count = 0;

  // const statemanagement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ScopedModel(
          model: counterModel(),
          child: Scaffold(
      appBar:  AppBar(
        title: Text('statemanagementDemo'),
        elevation: 0.0,
      ),
      body: counterWrapper(),
      floatingActionButton: ScopedModelDescendant<counterModel>(
        rebuildOnChange: false,
        builder: (context ,_, model) => FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: model.increaseCount,
      ),
      )
     
    ),
        );


    // Scaffold(
    //   appBar:  AppBar(
    //     title: Text('statemanagementDemo'),
    //     elevation: 0.0,
    //   ),
    //   body: Center(
    //     child: Chip(
    //       label: Text('$count'),
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     child: Icon(Icons.add),
    //     onPressed: (){
    //       count += 1;
    //       print('print $count');
    //     },
    //   ),
    // );
  }
}
