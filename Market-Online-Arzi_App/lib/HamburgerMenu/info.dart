import 'package:flutter/material.dart';
class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Important People and Contacts'),
      ),
      body:

        Column(
          children: [
            new Divider(
              height: 40.0,
            ),
            new Text('HOSTEL OFFICIALS'),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text('Warden'),
                    Text('Miss Meenu'),
                    Text('4568213970'),
                  ]),
                  TableRow(children: [
                    Text('Caretaker'),
                    Text('Mr. Ramlal'),
                    Text('9012357841'),
                  ]),
                  TableRow(children: [
                    Text('Night Caretaker'),
                    Text('Miss Dolly'),
                    Text('4561237890'),
                  ]),
                ],
              ),
            ),
                new Text('EXECUTIVE TEAM'),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text('Proctor'),
                    Text('Vasudhara'),
                    Text('1235489670'),
                  ]),
                  TableRow(children: [
                    Text('Vice Proctor'),
                    Text('Nisha Sharma'),
                    Text('7894632510'),
                  ]),
                  TableRow(children: [
                    Text('Incharge Block-A'),
                    Text('Kirti Bhatia'),
                    Text('1478523690'),
                  ]),
                  TableRow(children: [
                    Text('Incharge Block-B'),
                    Text('Himanshi Mittal'),
                    Text('9632587410'),
                  ]),
                  TableRow(children: [
                    Text('Medical Incharge'),
                    Text('Tanya Arora'),
                    Text('7539518462'),
                  ]),
                  TableRow(children: [
                    Text('Gym Incharge'),
                    Text('Meena Kumari'),
                    Text('7894561230'),
                  ]),
                  TableRow(children: [
                    Text('Mess Incharge'),
                    Text('Janvi Bansal'),
                    Text('9638527410'),
                  ]),
                ],
              ),
            ),
            new Text('EMERGENCY CONTACT LIST'),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text('Ambulance'),
                    Text('Emergency'),
                    Text('4568213970'),
                  ]),
                  TableRow(children: [
                    Text('Dispensary'),
                    Text('Thapar Dispensary'),
                    Text('9012357841'),
                  ]),
                ],
              ),
            ),
          ],
        )




    );
  }
}
