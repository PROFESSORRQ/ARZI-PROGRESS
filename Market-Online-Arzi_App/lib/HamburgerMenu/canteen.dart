import 'package:flutter/material.dart';

class CanteenPage extends StatefulWidget {
  @override
  _CanteenPageState createState() => _CanteenPageState();
}

class _CanteenPageState extends State<CanteenPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Online Hostel Canteen'),
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
                  Text('Evening'),
                  Text('5 to 7:30 PM'),

                ]),
                TableRow(children: [
                  Text('Night'),
                  Text('9:30 to 12:00 PM'),

                ]),

              ],
            ),
          ),
          new Text('CANTEEN MENU'),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Text('Item'),
                  Text('Price'),
                ]),
                TableRow(children: [
                  Text('Kathi Roll'),
                  Text('50'),
                ]),
                TableRow(children: [
                  Text('Aloo Sandwich'),
                  Text('40'),
                ]),
                TableRow(children: [
                  Text('Maggi'),
                  Text('20'),
                ]),
                TableRow(children: [
                  Text('Veg Spring Roll'),
                  Text('80'),
                ]),
                TableRow(children: [
                  Text('Non Veg Spring Roll'),
                  Text('90'),
                ]),
                TableRow(children: [
                  Text('Veg Burger'),
                  Text('40'),
                ]),
                TableRow(children: [
                  Text('Cold Coffee'),
                  Text('20'),
                ]),
                TableRow(children: [
                  Text('Cold Drink'),
                  Text('45'),
                ]),
              ],
            ),
          ),
          new Text('To Preorder Click Here'),
          RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue)
            ),
            onPressed: () {},
            child: const Text('Preorder', style: TextStyle(fontSize: 20)),
          ),

        ],
      ),

    );
  }
}
