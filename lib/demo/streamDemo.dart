import 'package:flutter/material.dart';
import 'dart:async';
class streamDemo extends StatelessWidget {
  const streamDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('streamDemo'),elevation: 0.0,),

      body: streamDemoHome(),
    );
  }
}


class streamDemoHome extends StatefulWidget {
  streamDemoHome({Key key}) : super(key: key);

  _streamDemoHomeState createState() => _streamDemoHomeState();
}

class _streamDemoHomeState extends State<streamDemoHome> {

StreamSubscription _streamDemoSubsribution;
StreamController<String> _streamDemo;
StreamSink _sinkDemo;
String _data = '...';
@override
  void dispose() {
    // _streamDemo.close();
    super.dispose();
  }

@override
  void initState() {
    super.initState();
    print('create a stream.');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    // _streamDemo = StreamController<String>();
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;
    print('start listening on a stream');
  _streamDemoSubsribution =  _streamDemo.stream.listen(onData ,onError:  onerror ,onDone:  ondone);
   _streamDemo.stream.listen(onDataTwo ,onError:  onerror ,onDone:  ondone);
    print('initialize completed.');
  }

void onData(String data){
  setState(() {
    _data = data;
  });
  print('$data');
}
void onDataTwo(String data){
  print('ondataTwo:$data');
}
void onerror(error){
  print('error: $error');
}

void _addStream() async{
print(' _addsestream subscription');

String data = await fetchData();
// _streamDemo.add(data);
_sinkDemo.add(data);
}

void _pauseStream(){
print(' _pausestream subscription');
_streamDemoSubsribution.pause();
}

void _resumeStream(){
print(' _resumestream subscription');
_streamDemoSubsribution.resume();
}

void _cancelStream(){
print(' _cancelstream subscription');
_streamDemoSubsribution.cancel();

}

void ondone(){
  print('done');
}
Future<String> fetchData() async{
  await Future.delayed(Duration(seconds: 3));
  // throw 'somthing happened';
  return 'hello~';
}
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           
           children: <Widget>[
            //  Text('$_data'),

            StreamBuilder(
            
stream: _streamDemo.stream,
initialData: '...',
builder: (context ,snapshot){
  return Text('${snapshot.data}');
},
            ),
Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             FlatButton(
               child: Text('ADD'),
               onPressed: _addStream,
             ),
             FlatButton(
               child: Text('pause'),
               onPressed: _pauseStream,
             ),
             FlatButton(
               child: Text('resume'),
               onPressed: _resumeStream,
             ),FlatButton(
               child: Text('cancle'),
               onPressed: _cancelStream,
             )
           ],
         ),
           ],
         ),
       ),
    );
  }
}