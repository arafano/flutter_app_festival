import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  final title;
  final image;
  final body;
  final author;
  final postDate;
  PostDetails({this.title, this.image, this.body, this.author, this.postDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post Details"),
        ),
        body: Container(
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Nasalization',
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.network(image),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(body,
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("by " + author,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Posted on " + postDate,
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Comments area ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Nasalization")),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: ""
                              "Enter Comments"),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text(
                          'Publish',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            )
          ]),
        ));
  }
}
