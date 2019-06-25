import 'package:flutter/material.dart';
import 'package:my_first/model/post.dart';
class cardDemo extends StatefulWidget {
  cardDemo({Key key}) : super(key: key);

  _cardDemoState createState() => _cardDemoState();
}

class _cardDemoState extends State<cardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts.map((post){
            return Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                     child: Image.network(
                      post.icon,
                      fit: BoxFit.cover,
                    ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        post.icon,
                      ),
                    ),
                    title: Text(post.title),
                    subtitle: Text(post.details),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(post.price ,maxLines: 2, overflow: TextOverflow.ellipsis,),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text('like'.toUpperCase()),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text('read'.toUpperCase()),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
