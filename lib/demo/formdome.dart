import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class formDome extends StatelessWidget {
  const formDome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('formDemo'),
        elevation: 0.0,
      ),
     body: Theme(
       data: Theme.of(context).copyWith(
         primaryColor: Colors.black,
       ),
      //  data: ThemeData(
      //    primaryColor: Colors.black,
      //  ),
child: Container(
  padding: EdgeInsets.all(16.0),
  
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // textfieldDemo(),
      RegisterFormState(),
    ],
  ),
),
     ),

    );
  }
}


class RegisterFormState extends StatefulWidget {
  _RegisterFormStateState createState() => _RegisterFormStateState();
  
}

class _RegisterFormStateState extends State<RegisterFormState> {
  final registerFormKey = GlobalKey<FormState>();
  String userName , passWords;
  bool autoValidate = false;

  void submitRegisterForm(){
    
    if (registerFormKey.currentState.validate()) {
      
registerFormKey.currentState.save();
debugPrint('userName:$userName');
debugPrint('passWord:$passWords');
Scaffold.of(context).showSnackBar(
  SnackBar(
    content: Text('data'),
  )
);
    } else {
      setState(() {
        autoValidate = true;
      });
    }


  }

String validatorUserName (value){
  if (value.isEmpty) {
    return 'userName is required';
  }
  return null;
}

String validatorPassWords (value){
  if (value.isEmpty) {
    return 'passWords is required';
  }
  return null;
}
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
       child: Column(
         children: <Widget>[
           TextFormField(
decoration: InputDecoration(
  labelText: 'userName',
  helperText: '',
),
onSaved: (value){
  userName = value;
},
validator: validatorUserName,
autovalidate: autoValidate,
           ),
                      TextFormField(
                        obscureText: true,
decoration: InputDecoration(
  labelText: 'password',
  helperText: '',
),
onSaved: (value){
passWords = value;
},
validator: validatorPassWords,
autovalidate: autoValidate,
           ),
           SizedBox(height: 32.0,),
           Container(
             width: double.infinity ,
             child: RaisedButton(
               color:  Theme.of(context).accentColor,
               child: Text('register', style : TextStyle(color: Colors.white)),
               elevation: 0.0,
               onPressed: submitRegisterForm,
             ),
           ),
         ],
       ),
    );
  }
}



class textfieldDemo extends StatefulWidget {

  _textfieldDemoState createState() => _textfieldDemoState();
}

class _textfieldDemoState extends State<textfieldDemo> {

final textEditingController = prefix0.TextEditingController();

@override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
  //  textEditingController.text = 'hi';
   textEditingController.addListener(
(){
  debugPrint('input:${textEditingController.text}');
}
   );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value){
      //   debugPrint('input:$value');
      // },
      onSubmitted: (value){
        debugPrint('submit:$value');
      },
      
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'labelText',
        hintText: 'enter the post title.',
        border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class themeDome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}