import 'package:flutter/material.dart';
import 'package:my_first/demo/postshowDemo.dart';
import 'package:my_first/model/post.dart';





class slierDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // pinned: true,
            // title: Text('data'),
            floating: true,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('data',style: TextStyle(
fontSize: 15.0,
letterSpacing: 3.0,
fontWeight: FontWeight.w100,
              )),
              background: Image.network(
                'https://resources.ninghao.net/images/overkill.png',
                fit: BoxFit.cover,
              ),

            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
padding: EdgeInsets.all(8.0),
sliver: sliverListDemo(),
// sliver: sliverGridDemo(),
            ),
          ),
        ],
      ),
    );
  }
}


class sliverListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(

      delegate: SliverChildBuilderDelegate(
(BuildContext constext , int index){
return Padding(
  padding: EdgeInsets.only(bottom: 38.0),
  child: Material(
          borderRadius: BorderRadius.circular(32.0),
    elevation: 24.0,
    shadowColor: Colors.blueGrey[100].withOpacity(0.5),
    child: Stack(
      children: <Widget>[
        AspectRatio(
      aspectRatio: 16/9,
  child: Image.network(
    posts[index].icon,
    fit: BoxFit.cover,
  ),
),
Positioned(
  top: 32.0,
  left: 32.0,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        posts[index].title,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      Text(
        posts[index].details,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    ],
  ),
),
Positioned.fill(
  child: Material(
    color: Colors.transparent,
    child: InkWell(
      splashColor: Colors.white.withOpacity(0.5),
      highlightColor: Colors.white.withOpacity(0.1),
onTap: (){
  debugPrint('click');
  Navigator.of(context).push(
    MaterialPageRoute(builder:(context) => PostShow(post:posts[index])),
  );
},
    ),
  ),
)
      ],
    ),
  ),
);
},
childCount: posts.length,
      ),
    );
  }
}

class sliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              // childAspectRatio: 0.5,
              
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return Container(

                  child: Image.network(
                    posts[index].icon,

                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: posts.length,
              ),
          );
  }
}

class sliverBuildDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

