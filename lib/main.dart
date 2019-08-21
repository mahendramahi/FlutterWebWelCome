import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_web/material.dart';
import 'package:hummingbird/utils/Strings.dart';
import 'package:http/http.dart' as http;
void main() => runApp(Hummingbird());

class Hummingbird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyWebsite(),
      //GHFlutter(),
      //MyWebsite(),
    );
  }
}

// class GHFlutter extends StatefulWidget {
//   @override
//   _GHFlutterState createState() => _GHFlutterState();
// }

// class _GHFlutterState extends State<GHFlutter> {
//  String nextPage = "https://swapi.co/api/people";
//   var _scrollController = ScrollController();
//   bool isLoading = false;
//   List names = List();
 
//   final dio = Dio();

//   void _getMoreData() async {
//     if (!isLoading) {
//       setState(() {
//         isLoading = true;
//       });
 
//       final response = await dio.get(nextPage);
//       List tempList = List();
//       nextPage = response.data['next'];
//       for (int i = 0; i < response.data['results'].length; i++) {
//         tempList.add(response.data['results'][i]);
//       }

//       setState(() {
//         isLoading = false;
//         names.addAll(tempList);
//       });
//     }
//   }

//   @override
//   void initState() {
//     this._getMoreData();
//     // TODO: implement initState
//     super.initState();
//     _scrollController.addListener(() {
//       if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
//         _getMoreData();
//       }
//     });
//   }

// @override
//   void dispose() {
//     _scrollController.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }

// Widget _buildProgressBar() {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Center(
//       child: Opacity(
//         opacity: isLoading ? 1.0 : 0.0,
//         child: CircularProgressIndicator(),
//       ),
//     ),
//   );
// }

// Widget _buildList() {
//   return ListView.builder(
//     itemCount: names.length + 1,
//     itemBuilder: (BuildContext context, ),
//   );
// }

// }

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Tiles"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Tiles 2"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Hummingbird'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                          "https://images.unsplash.com/photo-1520638023360-6def43369781?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                        )))),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Welcome to Flutter For Web',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}