import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';

class rxDartDemo extends StatelessWidget {
  const rxDartDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rxDartDemo'),
        elevation: 0.0,
      ),
      body: rxDartDemoHome(),
    );
  }
}

class rxDartDemoHome extends StatefulWidget {
  rxDartDemoHome({Key key}) : super(key: key);

  _rxDartDemoHomeState createState() => _rxDartDemoHomeState();
}

class _rxDartDemoHomeState extends State<rxDartDemoHome> {

PublishSubject<String> _subject ;


@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _subject.close();
  }

@override
  void initState() {
    super.initState();
    _subject = PublishSubject<String> ();
    _subject
    // .map((item) => 'item : $item')
    // .where((item) => item.length > 9)
    .debounceTime(Duration(seconds:5))
    .listen((data) => print(data));
    // Observable<String> _obserable = 
    // // Observable(Stream.fromIterable(['hello~' , '你好']));
    // // Observable.fromFuture(Future.value('hello ~'));
    // // Observable.fromIterable(['hello ~','你好']);
    // // Observable.just('hello');
    // Observable.periodic(Duration(seconds: 3) ,(x) => x.toString());
    // _obserable.listen(onData);
    
    // PublishSubject<String> _subject = PublishSubject<String>();
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();
//         ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);

// // HitTestBehavior.translucent
// _subject.add('hello');
// _subject.add('hola');
// _subject.add('hi');

// _subject.listen((data) => print('listen 1 : $data'));



// _subject.listen((data) => print('listen 2 : ${data.toUpperCase()}'));



// _subject.close();
  }


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value){
          _subject.add('input $value');
        },
        onSubmitted: (value){
          _subject.add('submitted : $value');
        },
        decoration: InputDecoration(
          labelText: 'label text',
          filled: true,
        ),
      ),
    );
  }
}