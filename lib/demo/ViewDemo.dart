import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_first/model/post.dart';


class ViewDemo extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return gridViewBuildDemo();
  }
}


class gridViewBuildDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context ,int index){
    return Container(
      child: Image.network(
        
        posts[index].icon,
fit: BoxFit.cover,
        
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
        // crossAxisCount: 2,
        // childAspectRatio: 5.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        
              ),
      itemBuilder: _gridItemBuilder,
    );
  }
}


class gridViewExtentDemo extends StatelessWidget{
  List<Widget>  _buildTitles(int length){
return List.generate(length, (int index) {
  return Container(
    color: Colors.grey[300],
alignment: Alignment(0.0, 0.0),
child: Text('item $index', style: TextStyle(fontSize: 19.0 , color: Colors.green)),
  );
});
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      // crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      scrollDirection: Axis.horizontal,
      children: _buildTitles(100),
    );
  }
}


class gridViewCountDemo extends StatelessWidget{
  List<Widget>  _buildTitles(int length){
return List.generate(length, (int index) {
  return Container(
    color: Colors.grey[300],
alignment: Alignment(0.0, 0.0),
child: Text('item $index', style: TextStyle(fontSize: 19.0 , color: Colors.green)),
  );
});
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      scrollDirection: Axis.horizontal,
      children: _buildTitles(100),
    );
  }
}

class pageViewBuildDwmo extends StatelessWidget{
Widget _pageItemBuilder(BuildContext context , int index){
  return Stack(
children: <Widget>[
  SizedBox.expand(
    child: Image.network(
      posts[index].icon,

      fit: BoxFit.cover,
    ),
    // child: Image.network(
    //   fit:BoxFit.cover,
    //   posts[index].icon,
    // ),
    
  ),
  Positioned(
bottom: 8.0,
left: 9.0,
child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Text(
posts[index].title,
// style: TextStyle(fontStyle: FontWeight.bold)
    ),
    Text(
      posts[index].details,
      // style: TextStyle(fontStyle: FontStyle.normal)
    ),
  ],
),
  ),
],
  );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class pageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.vertical,
onPageChanged: (currentPage) => debugPrint('Page:$currentPage'),
controller: PageController(
  initialPage: 1,
  keepPage: true,
  viewportFraction: 0.85,

),
      children: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text('data'),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text('data1'),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text('data2'),
        ),
      ],
    );
  }
}