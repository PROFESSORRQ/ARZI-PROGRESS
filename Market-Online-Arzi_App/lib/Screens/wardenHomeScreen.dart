import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonTheme(
                      height:50.0,
                      minWidth: 180.0,
                      child: RaisedButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0),
                      side:BorderSide(color: HexColor("#00bcd4"),width: 3.0),),
                      color: HexColor("#00bcd4"),
                      child: Text('Generate QR Code',
                      style:TextStyle(color:Colors.white,
                      fontSize: 30.0,),),
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
                  },),
                    ),
                    SizedBox(
                height: 10.0,
              ),
              ButtonTheme(
                height: 50.0,
                minWidth: 200.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    side: BorderSide(color: HexColor("#00bcd4"), width: 3.0),
                  ),
                  color: HexColor("#00bcd4"),
                  child: Text(
                    'Export as PNG or JPEG',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: (){},
                ),
              ),
                  ],
                )
                
  
                
              

        ],),
      ),
    );
  }
  final qrText =TextEditingController();
}