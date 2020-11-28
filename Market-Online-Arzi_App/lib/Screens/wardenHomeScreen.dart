import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:wardenHomeScreen(),
  ));
}

class wardenHomeScreen extends StatefulWidget{
  @override
  wardenHomeScreenState createState() => wardenHomeScreenState();
}

class wardenHomeScreenState extends State<wardenHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ARZI"),
      ),
      body: Center(
        child: Text(
          "hey there",
          style: new TextStyle(fontSize:30.0,fontWeight: FontWeight.bold),
          ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   icon:Icon(Icons.camera_alt_rounded),
      //   label: Text("Scan"),
      //   onPressed: _scanQR,
      // ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
