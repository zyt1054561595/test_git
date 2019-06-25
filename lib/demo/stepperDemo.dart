import 'package:flutter/material.dart';

class stepperDemo extends StatefulWidget {
  stepperDemo({Key key}) : super(key: key);

  _stepperDemoState createState() => _stepperDemoState();
}

class _stepperDemoState extends State<stepperDemo> {

int  _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('stepperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,

              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int value){
                  setState(() {
                  _currentStep = value;
                  });
                },
                onStepContinue: (){
                  setState(() {
                    _currentStep < 3 ? _currentStep += 1 :_currentStep = 0;
                    // _currentStep += 1;
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                    // _currentStep -= 1;
                  });
                },
                steps: [
                  Step(
                    title: Text('login'),
                    subtitle: Text('pwd'),
                    content: Text('Eiusmod nostrud excepteur ullamco Lorem dolore culpa ex anim aliquip eu nisi ea laborum.'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('choice plan A'),
                    subtitle: Text('pwd  cancle'),
                    content: Text('Culpa aliqua magna culpa qui esse.'),
                    isActive: _currentStep == 1,
                  ),
                  Step(
                    title: Text('choice plan B'),
                    subtitle: Text('pwd keshi'),
                    content: Text('Veniam proident quis occaecat exercitation veniam consequat.'),
                    isActive: _currentStep == 2,
                  ),
                  Step(
                    title: Text('choice plan C'),
                    subtitle: Text('pwd vonce'),
                    content: Text('Laboris duis duis ea magna officia.'),
                    isActive: _currentStep == 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}