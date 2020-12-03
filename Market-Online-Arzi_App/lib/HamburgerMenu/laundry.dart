import 'package:flutter/material.dart';

class LaundryPage extends StatefulWidget {
  @override
  _LaundryPageState createState() => _LaundryPageState();
}

class _LaundryPageState extends State<LaundryPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Online Laundry'),
      ),
      body:
      Column(
        children: [
          new Divider(
            height: 30.0,
          ),
          new Text('TIMINGS'),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Text('Afternoon'),
                  Text('12 to 2 PM'),

                ]),
                TableRow(children: [
                  Text('Evening'),
                  Text('3 to 6:30 PM'),

                ]),

              ],
            ),
          ),

          new Divider(
            height: 30.0,
          ),
          new Text('To Mark Previous Laundry Taken , Click Here!'),
          RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue)
            ),
            onPressed: () {},
            child: const Text('Laundry Recieved', style: TextStyle(fontSize: 20)),
          ),
          new Divider(
            height: 30.0,
          ),
          new Text('To Add New Entry of your laundry , Click Here!'),
          RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue)
            ),
            onPressed: () {},
            child: const Text('Add New Entry', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
