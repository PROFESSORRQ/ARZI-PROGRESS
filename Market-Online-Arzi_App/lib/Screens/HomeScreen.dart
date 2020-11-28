import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
String result="hey there !";
Future _scanQR() async{
  try{
    String qrResult = await FlutterBarcodeScanner.scanBarcode("#000000","Cancel", true, ScanMode.QR);
    setState(() {
      result=qrResult;
    });
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
          result,
          style: new TextStyle(fontSize:30.0,fontWeight: FontWeight.bold),
          ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon:Icon(Icons.camera_alt_rounded),
        label: Text("Scan"),
        onPressed: _scanQR,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
