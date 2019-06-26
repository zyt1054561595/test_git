import 'package:flutter/material.dart';
import 'model/post.dart';
import 'package:my_first/demo/bottom_navigationBar_demo.dart';
import 'package:my_first/demo/basicDemo.dart';
import 'demo/layout_demo.dart';
import 'demo/ViewDemo.dart';
import 'demo/SliverDemo.dart';
import 'demo/navigationDemo.dart';
import 'demo/formdome.dart';
import 'package:my_first/demo/material_components.dart';
import 'demo/state_management.dart';
import 'demo/streamDemo.dart';
void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // home: Home(),
// home: slierDemo(),
// home: navigationDemo(),
initialRoute: '/streamDemo',
routes: {
'/':(context) => slierDemo(),
  '/data3':(context) => Page(title: 'data3'),
  '/form':(context) => formDome(),
  '/mdc':(context) => MaterialCompnents(),
  '/state_management':(context) => statemanagement(),
  '/streamDemo': (context) => streamDemo(),
},
    theme: ThemeData(
      highlightColor: Color.fromRGBO(255, 255, 255, .5),
      splashColor: Colors.white,
      // splashFactory: ,
      primaryColor: Colors.yellow,
      accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      )
    );
  }
}

class Home extends StatelessWidget{

  // Widget _listItemBuild(BuildContext context,int index ){
  //   // return Text(posts[index].title); 

  //   return Container (
  //     color: Colors.red,
  //     margin: EdgeInsets.all(8.0),
  //     child: Column(
  //       children: <Widget>[
  //         Text(posts[index].title,style: 
  //         Theme.of(context).textTheme.title
  //         ),
  //         Text(posts[index].details,
  //         style: Theme.of(context).textTheme.subhead
  //         ),
  //         Text(posts[index].price,
  //         style: Theme.of(context).textTheme.subtitle
  //         ),
  //       ],
  //     ),
      
  //   );
  // }
  @override
  Widget build(BuildContext context ) {
    // TODO: implement build
    return 
    // DefaultTabController(
    //    length: 4,
    //    child: Scaffold(
    //      appBar: AppBar(
    //        bottom: TabBar(
    //         //  tabs: myTabs,
    //         tabs: <Widget>[
    //         Tab(icon: Icon(Icons.local_activity)),
    //         Tab(icon: Icon(Icons.change_history)),
    //         Tab(icon: Icon(Icons.label)),
    //         Tab(icon: Icon(Icons.receipt)),
    //         ],
    //        ),
    //      ),
    //      body: TabBarView(
    //        children: <Widget>[
    //          Icon(Icons.label,size: 128 , color: Colors.black),
    //          Icon(Icons.label,size: 128 , color: Colors.black),
    //          Icon(Icons.label,size: 128 , color: Colors.black),
    //          Icon(Icons.label,size: 128 , color: Colors.black),

    //        ],
    //       //  children: myTabs.map((Tab tab) {
    //       //    return Center(child: Text(tab.text));
    //       //  }).toList(),
    //      ),
    //    ),
    //  );
    DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomnavigationBardemo(),
      appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1,
            indicatorPadding: EdgeInsets.zero,
labelColor: Colors.red,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.local_activity),text: '我是'),
            Tab(icon: Icon(Icons.change_history),text: '还是'),
            Tab(icon: Icon(Icons.label),text: '不是'),
            Tab(icon: Icon(Icons.receipt),text: '都是'),
          ],
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
          tooltip: 'search',
          onPressed: ()=>debugPrint('search is selected'),
        ),      
         IconButton(
          icon: Icon(Icons.search),
          tooltip: 'search',
          onPressed: ()=>debugPrint('searchone is selected'),
        ),
        ],
        title: Text('zyt_learn_title'),
        elevation: 4.0,


      ),
      // body: helloworld(),
      drawer: drawerDemo(),
      endDrawer: Text('this is enddrawer'),
               body: TabBarView(
           children: <Widget>[
             basicDemo(),
            //  Icon(Icons.label,size: 128 , color: Colors.black),
             Icon(Icons.label,size: 128 , color: Colors.black),
            //  Icon(Icons.label,size: 128 , color: Colors.black),
            ViewDemo(),
            //  Icon(Icons.label,size: 128 , color: Colors.black),
layoutDemo(),
           ],
          //           children: myTabs.map((Tab tab) {
          //    return Center(child: Text(tab.text));
          //  }).toList(),
               ),
    ),
    );
  }
}

class drawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Drawer(
      elevation: 8,
        semanticLabel: 'data',
        child: ListView(
          shrinkWrap: true,
          primary: true,
          reverse: false,
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
accountName: Text('zyt',style: TextStyle(fontWeight: FontWeight.bold )),
accountEmail: Text('1054561595@qq.com'),
// currentAccountPicture: Icon(Icons.monetization_on),
decoration: BoxDecoration(
  color: Colors.yellow,
  image: DecorationImage(
image:  NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
fit: BoxFit.cover,
colorFilter: ColorFilter.mode(Colors.red.withOpacity(.5), BlendMode.hardLight),
  ),
),
currentAccountPicture: CircleAvatar(
  backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
),
            ),
            // DrawerHeader(
            //   child: Text('this is the one'.toUpperCase()),

            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //   ),
            // ),
            ListTile(
              title: Text('thisistheone',textAlign: TextAlign.right,),
              trailing: Icon(Icons.message,color: Colors.red),
              // onTap: () => debugPrint('this is selel'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('thisisthetwo',textAlign: TextAlign.right,),
              trailing: Icon(Icons.mail,color: Colors.red),
                            onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('thisisthethree',textAlign: TextAlign.right,),
              trailing: Icon(Icons.edit,color: Colors.red),
                            onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('thisisthefour',textAlign: TextAlign.right,),
              trailing: Icon(Icons.library_add,color: Colors.red),
                            onTap: () => Navigator.pop(context),
            ),
          ],

        ),
    );
  }
}


class helloworld extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text
      ('hello world',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40.0,
        // fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        color: Colors.red
        )
      ),
    );
  }
 
}