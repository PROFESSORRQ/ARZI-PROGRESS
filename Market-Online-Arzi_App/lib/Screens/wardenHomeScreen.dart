import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class WardenHomeScreen extends StatefulWidget{
  @override
  _WardenHomeScreenState createState() => _WardenHomeScreenState();
}

class _WardenHomeScreenState extends State<WardenHomeScreen> {
  String qrData="https://github.com/PROFESSORRQ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate"),
        centerTitle: true,
      ),
      body: Container(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              QrImage(data: qrData),
              SizedBox(height:10.0,),
              Text("Get your data/link to the QR CODE"),
              TextField(
                controller: qrText,
                decoration: InputDecoration(
                  hintText: "Enter the Data/Link",
                ),
              ),
              SizedBox(
                height:20.0 ,
                ),
                FlatButton(
                  padding: EdgeInsets.all(15.0),
                  child: Text("GENERATE QR CODE"),
                  onPressed: (){
                    if(qrText.text.isEmpty){
                      setState(() {
                        qrData="https://flutter.dev";
                      });
                    }else{
                      setState(() {
                        qrData=qrText.text;
                      });
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.blue, width: 3.0)),
                  )
                
              

        ],),
      ),
    );
  }
  final qrText =TextEditingController();
}