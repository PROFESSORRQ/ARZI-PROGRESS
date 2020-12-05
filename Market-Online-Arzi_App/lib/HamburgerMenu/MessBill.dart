import 'package:flutter/material.dart';

class MessBill extends StatefulWidget {
  @override
  _MessBillState createState() => _MessBillState();
}

class _MessBillState extends State<MessBill> {
  @override
  Widget build(BuildContext context) {
    return 
      new Scaffold(
        appBar: new AppBar(
          title: new Text('Mess Details'),
        ),

            body:
        new ListView(
        children: <Widget>[
    new ListTile(
    leading: Icon(Icons.receipt),
    title: new Text("Mess Bill                       Rs.16000/-"),
    ),

          ]
          ));
  }
}

