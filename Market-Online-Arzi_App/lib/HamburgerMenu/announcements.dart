import 'package:flutter/material.dart';
class AnnouncementsPage extends StatefulWidget {
  @override
  _AnnouncementsPageState createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Important Announcements'),
      ),
      body:
        new ListView(
        children: <Widget>
        [
          new ListTile(
            leading: Icon(Icons.local_pizza),
            title: new Text("Special Dinner will be served on December 25"),
          ),
          new Divider(
            height: 5.0,
            color: Colors.black,
          ),
          new ListTile(
            leading: Icon(Icons.wc),
            title: new Text("Washroom's of Block-A will remain out of use from 2 to 7 PM on December 2 ,for maintainance reasons"),
          ),
          new Divider(
            height: 5.0,
            color: Colors.black,
          ),
          new ListTile(
            leading: Icon(Icons.cake),
            title: new Text("New Year Party will be on December 30, 7PM onwards."),
          ),
          new Divider(
            height: 5.0,
            color: Colors.black,
          ),
          new ListTile(
            leading: Icon(Icons.receipt),
            title: new Text("Mess Bill has been updated for the month of November"),
          ),
          new Divider(
            height: 5.0,
            color: Colors.black,
          ),

        ],
      ),
    );;
  }
}
