import 'package:flutter/material.dart';

class MessPage extends StatefulWidget {
  @override
  _MessPageState createState() => _MessPageState();
}

class _MessPageState extends State<MessPage> {
  @override
  Widget build(BuildContext context) {
    return 
      new Scaffold(
        appBar: new AppBar(
          title: new Text('Mess Details'),
        ),

            body:
        new ListView(
        children: <Widget>
    [
    new ListTile(
    leading: Icon(Icons.receipt),
    title: new Text("Mess Bill for the month of November"),
    ),
          new Divider(
            height: 10.0,
          ),
          Center(child: new Text('MESS MENU (Week 1,3)')),

          new Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text('Day'),
                    Text('Breakfast'),
                    Text('Lunch'),
                    Text('Dinner'),
                  ]),
                  TableRow(children: [
                    Text('Sunday'),
                    Text('Aloo Prantha , Boiled Eggs'),
                    Text('Aloo Capsicum, Chapatti , Rice'),
                    Text('Baingan Bharta , Chapatti , Choco Pie'),
                  ]),
                  TableRow(children: [
                    Text('Monday'),
                    Text('Boiled Eggs , Gobi Prantha'),
                    Text('Maa ki Dal , Chapatti'),
                    Text('Malai Kofta , Chapatti , Rice , Rasmalai'),
                  ]),
                  TableRow(children: [
                    Text('Tuesday'),
                    Text('Mixed Prantha , Omelette'),
                    Text('Curry , Chapatti, Rice'),
                    Text('Idli/Vada Sambhar , Chapatti , Rice , Rasgulla'),
                  ]),
                  TableRow(children: [
                    Text('Wednesday'),
                    Text('Aloo Sandwich , Boiled Eggs'),
                    Text('Kale Chane , Chapatti , Rice'),
                    Text('Palak Paneer , Chapatti , Vanilla Pastry'),
                  ]),
                  TableRow(children: [
                    Text('Thursday'),
                    Text('Poha , Muli Prantha'),
                    Text('White Chana , Chapatti'),
                    Text('Mix-Veg , Chapatti , Rice , Choco Pie'),
                  ]),
                  TableRow(children: [
                    Text('Friday'),
                    Text('Methi Prantha , Omeette'),
                    Text('Rajma , Chapatti , Rice'),
                    Text('Aloo Gobi , Chapatti , Black Forest Pastry'),
                  ]),
                  TableRow(children: [
                    Text('Saturday'),
                    Text('Vada Pav , Boiled Eggs'),
                    Text('Pav Bhaji , Chapatti , Salad'),
                    Text('Paneer Bhurji , Chapatti , Rice , Dry Cake'),
                  ]),
                ],
              ),
          ),
          Center(child: new Text('MESS MENU (Week 2,4)')),

          new Container(
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Text('Day'),
                  Text('Breakfast'),
                  Text('Lunch'),
                  Text('Dinner'),
                ]),
                TableRow(children: [
                  Text('Sunday'),
                  Text('Aloo Prantha , Boiled Eggs'),
                  Text('Aloo Capsicum, Chapatti , Rice'),
                  Text('Baingan Bharta , Chapatti , Choco Pie'),
                ]),
                TableRow(children: [
                  Text('Monday'),
                  Text('Boiled Eggs , Gobi Prantha'),
                  Text('Maa ki Dal , Chapatti'),
                  Text('Malai Kofta , Chapatti , Rice , Rasmalai'),
                ]),
                TableRow(children: [
                  Text('Tuesday'),
                  Text('Mixed Prantha , Omelette'),
                  Text('Curry , Chapatti, Rice'),
                  Text('Idli/Vada Sambhar , Chapatti , Rice , Rasgulla'),
                ]),
                TableRow(children: [
                  Text('Wednesday'),
                  Text('Aloo Sandwich , Boiled Eggs'),
                  Text('Kale Chane , Chapatti , Rice'),
                  Text('Palak Paneer , Chapatti , Vanilla Pastry'),
                ]),
                TableRow(children: [
                  Text('Thursday'),
                  Text('Poha , Muli Prantha'),
                  Text('White Chana , Chapatti'),
                  Text('Mix-Veg , Chapatti , Rice , Choco Pie'),
                ]),
                TableRow(children: [
                  Text('Friday'),
                  Text('Methi Prantha , Omeette'),
                  Text('Rajma , Chapatti , Rice'),
                  Text('Aloo Gobi , Chapatti , Black Forest Pastry'),
                ]),
                TableRow(children: [
                  Text('Saturday'),
                  Text('Vada Pav , Boiled Eggs'),
                  Text('Pav Bhaji , Chapatti , Salad'),
                  Text('Paneer Bhurji , Chapatti , Rice , Dry Cake'),
                ]),
              ],
            ),
          )
      ]
        )
      );
  }
}

