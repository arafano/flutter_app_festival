import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'components/TopPostCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var curdate = DateFormat("d MMMM y").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: <Widget>[
          Container(
            width: 150,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Blogs Today",
                style: TextStyle(fontSize: 25, fontFamily: 'Nasalization')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(curdate,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Nasalization',
                        color: Colors.grey)),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.today,
                    color: Colors.pink,
                  )),
            ],
          ),
          TopPostCard(),
        ],
      ),
    );
  }
}
