import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:market_online/Screens/wardenHomeScreen.dart';

class Wardenhome extends StatefulWidget {
  @override
  _WardenhomeState createState() => _WardenhomeState();
}

class _WardenhomeState extends State<Wardenhome> {

  TextStyle style = TextStyle(fontSize: 20.0);

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  int numberofpermi,numberofcomplaints,totaloccupant = 400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Warden - Homepage"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // StreamBuilder<QuerySnapshot>(
            //   stream: firestore.collection('Permit').snapshots(),
            //   builder: (context,snapshot) {
            //     if (snapshot.hasData) {
            //       final permi = snapshot.data.docs;
            //       numberofpermi = permi.length;
            //     }
            //     return Column(
            //       children: [],
            //     );
            //   },
            // ),
            // StreamBuilder<QuerySnapshot>(
            //   stream: firestore.collection('Complaints').snapshots(),
            //   builder: (context,snapshot) {
            //     if (snapshot.hasData) {
            //       final compl = snapshot.data.docs;
            //       numberofcomplaints = compl.length;
            //     }
            //     return Column(
            //       children: [],
            //     );
            //   },
            // ),
            new Divider(height: 30.0,),

            //To show the number of permissions
            Table(
              border: TableBorder.symmetric(
                  inside: BorderSide(width: 1, color: Colors.black),
                  outside: BorderSide(width: 1)
              ),
                  children: [
                    TableRow(children: [
                      Text('Number of Permisions',style: style,),
                      Text('13',style: style,),
                      //Text(numberofpermi.toString(),style: style,),
                    ]),

                    TableRow(children: [
                      Text('Current Occupancy',style: style,),
                      Text('387',style: style,),
                      //Text((totaloccupant - numberofpermi).toString(),style: style,),
                    ]),

                  ],
                ),

            SizedBox(height: 15.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.blue,
                  child: Icon(
                    Icons.info_outline,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                )
              ],
            ),
            new Divider(height: 30.0,),

            //To show the number of complaints

            Table(

              border: TableBorder.symmetric(
                  inside: BorderSide(width: 1, color: Colors.black),
                  outside: BorderSide(width: 1)
              ),
              children: [
                TableRow(children: [
                  Text('Number of Complaints',style: style,),
                  Text('5',style: style,),
                  // Text(firestore.collection('Complaints').snapshots().length.toString()),
                 // Text(numberofcomplaints.toString(),style: style,),
                ]),

                // TableRow(children: [
                //   Text('Current Occupancy'),
                //   Text('400'),
                // ]),

              ],
            ),

            SizedBox(height: 15.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.blue,
                  child: Icon(
                    Icons.info_outline,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                )
              ],
            ),

            new Divider(height: 30.0,),

            //Button to generate QR code
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.blue,
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WardenHomeScreen()),);
                },
                child: Text("Generate QRcode",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
