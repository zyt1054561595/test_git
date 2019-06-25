import 'package:flutter/material.dart';
import 'package:my_first/demo/cardDemo.dart';
import 'package:my_first/demo/formdome.dart';
import 'package:my_first/demo/simpleDemo.dart';
import 'package:my_first/main.dart';
import 'buttondemo.dart';
import 'floatingActionButtonDemo.dart';
import 'popMenuDemo.dart';
import 'formdome.dart';
import 'checkBoxDemo.dart';
import 'radioButtonDemo.dart';
import 'switchDemo.dart';
import 'simpleDemo.dart';
import 'chipDemo.dart';
import 'dataTabel.dart';
import 'stepperDemo.dart';
class MaterialCompnents extends StatelessWidget {
  // const MaterialCompnents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('me=aterialCompnets'),
        elevation: 0.0,//阴影效果
      ),
      body: ListView(
        children: <Widget>[
                                        listItem(title: 'radioDemo', page: radioButtonDemo(),),
                                        listItem(title: 'switchDemo', page: switchDemo(),),
                                        listItem(title: 'sliderDemo', page: SliderDemo(),),
                                        listItem(title: 'DateDemo', page: DateTimeDemoState(),),
listItem(title: 'simpleDiologDemo', page: simpleDiologDemo(),),
listItem(title: 'alertDiologDemo', page: alertDiologDemo(),),
listItem(title: 'bottomSheetDiologDemo', page: bottomSheetDemo(),),
listItem(title: 'snackBarDemo', page: snackBarDemo(),),
listItem(title: 'expansionPanelDemo', page: expansionPanelDemo(),),
listItem(title: 'chipdemo', page: chipDemo(),),
listItem(title: 'dataTabel', page: dataTable(),),
listItem(title: 'paginateddataTabel', page: paginatedDataTableDemo(),),
listItem(title: 'cardDeni', page: cardDemo(),),
listItem(title: 'stepper', page: stepperDemo(),),
                              listItem(title: 'checkBox', page: checkBoxDewmo(),),
                    listItem(title: 'form', page: formDome(),),

          listItem(title: 'popupMenuButton', page: PopupMenbuButtonDemo(),),

listItem(title: 'buttonDemo', page: buttonDemo(),),
listItem(title: 'FloatingActionButton', page: FloactingActionButtonDemo(),),

        ],
      ),
    );
  }
}


class _WidgetDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('WidgetDemo'),
  elevation: 0.0,
),
body: Container(
  padding: EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        ],
      ),
    ],
  ),
),
      // child: child,
    );
  }
}


class listItem extends StatelessWidget {
  // const listItem({Key key}) : super(key: key);
final String title;
final Widget page;

listItem({
  this.title,
  this.page,
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
onTap: (){ Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => page),
);
  },
    );
  }
}