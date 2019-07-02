import 'dart:async';

import 'package:flutter/material.dart';

class counterHomeDemo extends StatelessWidget {
  const counterHomeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        counterBloc _countBloc = inheritedCounterBloc.of(context).bloc;

    return StreamBuilder(
      initialData: 0,
      stream: _countBloc.count,
      builder: (context , snapshot){
        return ActionChip(
          label: Text('${snapshot.data}'),
          onPressed: (){
            _countBloc.counter.add(1);
          },
        );
      },
    );
    // Center(
    //   child: ActionChip(
    //     label: Text('0'),
    //     onPressed: (){
    //       // _countBloc.log();
    //               // _countBloc.counter.add(1);
    //     },
    //   ),
    // );
  }
}


class counterActionButton extends StatelessWidget {
  const counterActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    counterBloc _countBloc = inheritedCounterBloc.of(context).bloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        _countBloc.counter.add(1);

        _countBloc.log();
      },
      // child: child,
    );
  }
}


class inheritedCounterBloc extends InheritedWidget {
  inheritedCounterBloc({Key key, this.child ,this.bloc}) : super(key: key, child: child);

  final Widget child;
final counterBloc bloc;



  static inheritedCounterBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(inheritedCounterBloc)as inheritedCounterBloc);
  }

  @override
  bool updateShouldNotify( inheritedCounterBloc oldWidget) {
    return true;
  }
}


class counterBloc {
int _count = 0;

  final _counterActionController = StreamController<int>();

  StreamSink<int> get counter => _counterActionController.sink;
  final _counterController = StreamController<int>();
Stream<int> get count => _counterController.stream;

  countBloc(){
    _counterActionController.stream.listen(onData);

  }

void onData(int data){
  print('$data');
  // print('$data+_count');
  _count = data + _count;
  _counterController.add(_count);
  print('$_count');
}

void disponse(){
  _counterActionController.close();
  _counterController.close();
}
  void log (){
    print('object');
  }
}