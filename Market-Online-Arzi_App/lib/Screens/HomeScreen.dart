import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:market_online/Screens/LeaveForm.dart';


// void main(List<String> args) {
//   runApp(MaterialApp(
//     // debugShowCheckedModeBanner: false,
//     home:HomeScreen(),
//   ));
// }

class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
String result="hey there !";

Future _scanQR() async{
  try{
    String qrResult = await FlutterBarcodeScanner.scanBarcode("#000000","Cancel", true, ScanMode.QR)??"Shrey";
    setState(() {
      result=qrResult;
    });
    // Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveForm()));
  }
  on FormatException{
    setState(() {
      result="You pressed the back button before scanning";
    });
  }catch (ex){
    setState(() {
      result="Unknown Error $ex";
    });
  }
  // }
  // } on FormatException{
  //   
  // }catch (ex){
  //   
  // }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ARZI"),
      ),
      body: Center(
        child: Text(
          "Hey there!!",
          style: new TextStyle(fontSize:30.0,fontWeight: FontWeight.bold),
          ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon:Icon(Icons.camera_alt_rounded),
        label: Text("Scan"),
        onPressed: () {
          _scanQR();
          Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveForm()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// Container(
// child:Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text(
// "Hey there!!",
// style: new TextStyle(fontSize:30.0,fontWeight: FontWeight.bold),
// ),
// ],
// ),
// RaisedButton(
// child: Text(
// "Scan",
// textAlign: TextAlign.center,
//
// ),
// onPressed: () {
// _scanQR();
// Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveForm()));
// },
// ),
// ],
// ),
// ),