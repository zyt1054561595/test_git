import 'package:flutter/material.dart';
import 'package:my_first/model/post.dart';



class paginatedDataTableDemo extends StatefulWidget {
  paginatedDataTableDemo({Key key}) : super(key: key);

  _paginatedDataTableDemoState createState() => _paginatedDataTableDemoState();
}


class  PostDataSource extends DataTableSource {

  final List<Post> _posts = posts;

  int _selectedCount = 0;

  @override
  // TODO: implement rowCount
  int get rowCount => _posts.length;

@override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    // TODO: implement getRow
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
           DataCell(Text(post.title)),
           DataCell(Text(post.details)),
           DataCell(Image.network(post.icon)),
      ],
    );
  }
  void _sort(getField(post) , bool ascengding){
_posts.sort((a,b){
  if (!ascengding) {
    final c = a;
    a = b;
    b = c;
  }
   final aValue = getField(a);
   final bValue = getField(b);

return Comparable.compare(aValue ,bValue);
});
notifyListeners();

  }
}

class _paginatedDataTableDemoState extends State<paginatedDataTableDemo> {

  int _sortColumnIndex ;
bool _sortAccending = true;

final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('paginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Container(
                width: 30,
                child: Text('data'),
              ),
              rowsPerPage: 5,
              source: _postsDataSource,
              sortAscending: _sortAccending,
              sortColumnIndex: _sortColumnIndex,
// onSelectAll: (bool value){

// },
              columns: [
                DataColumn(
                  label: Text('post'),
                  onSort: (int columnIndex , bool accending){
                    _postsDataSource._sort((posts) => posts.title.length , accending);

                    setState(() {
                      _sortColumnIndex = columnIndex;
                      _sortAccending = accending;
                      
                    });
                  },

                ),
                DataColumn(
                  label: Text('title'),
                ),
                DataColumn(
                  label: Text('image'),
                ),
              ],




              // rows: posts.map((posts){
              //   return DataRow(
              //     selected: posts.selected,
              //     onSelectChanged: (bool value){
              //       setState(() {
              //         if (posts.selected != value) {
              //           posts.selected = value;
                        
              //         }
              //       });
              //     },
              //     cells:[
                    // DataCell(Text(posts.title)),
                    // DataCell(Text(posts.details)),
                    // DataCell(Image.network(posts.icon)),
              //     ],
              //   );
              // }
              // ).toList(),
            ),
            
          ],
        ),
      ),
    );
  }
}


class dataTable extends StatefulWidget {
  dataTable({Key key}) : super(key: key);

  _dataTableState createState() => _dataTableState();
}

class _dataTableState extends State<dataTable> {

int _sortColumnIndex ;
bool _sortAccending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dataTable'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortAscending: _sortAccending,
              sortColumnIndex: _sortColumnIndex,
// onSelectAll: (bool value){

// },
              columns: [
                DataColumn(
                  label: Container(
                    width: 40,
                    child: Text('auther'),
                  ),
                  onSort: (int index , bool accending){
                    setState(() {
                      _sortColumnIndex = index;
                      _sortAccending = accending;

                      posts.sort((a,b){
                        if (!accending) {
                          final c = a ;
                           a = b ;
                           b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });

                    });
                  },

                ),
                DataColumn(
                  label: Text('title'),
                ),
                DataColumn(
                  label: Text('image'),
                ),
              ],
              rows: posts.map((posts){
                return DataRow(
                  selected: posts.selected,
                  onSelectChanged: (bool value){
                    setState(() {
                      if (posts.selected != value) {
                        posts.selected = value;
                        
                      }
                    });
                  },
                  cells:[
                    DataCell(Text(posts.title)),
                    DataCell(Text(posts.details)),
                    DataCell(Image.network(posts.icon)),
                  ],
                );
              }
              ).toList(),
              // [

                // DataRow(
                //   cells: [
                //     DataCell(Text('hello')),
                //     DataCell(Text('dataA')),
                //   ],
                // ),
                // DataRow(
                //   cells: [
                //     DataCell(Text('hola')),
                //     DataCell(Text('dataB')),
                //   ],
                // ),
                // DataRow(
                //   cells: [
                //     DataCell(Text('您好')),
                //     DataCell(Text('dataC')),
                //   ],
                // ),
                // DataRow(
                //   cells: [
                //     DataCell(Text('good moning')),
                //     DataCell(Text('dataD')),
                //   ],
                // ),
              // ],
            ),
            
          ],
        ),
      ),
    );
  }
}
