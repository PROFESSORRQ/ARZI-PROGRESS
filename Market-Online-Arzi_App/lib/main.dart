import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'consumer/userLogin.dart';
import 'package:hexcolor/hexcolor.dart';
import 'consumer/wardenlogin.dart';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            backgroundColor: HexColor("#b2ebf2"),
            body: MarketOnline(),
          ),
        ),
      ),
    );

class MarketOnline extends StatefulWidget {
  @override
  _MarketOnlineState createState() => _MarketOnlineState();
}

class _MarketOnlineState extends State<MarketOnline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("images/bk2.jpg"),
          //   fit: BoxFit.cover,
          // ),
          border: Border.all(color: Colors.black87, width: 5.0),
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assests/images/thapar_logo.png'),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ARZI\nThapar Institute\nEngineering & Technology',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  color: HexColor("#ff0000"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonTheme(
                height: 60.0,
                minWidth: 180.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    side: BorderSide(color: HexColor("#00bcd4"), width: 3.0),
                  ),
                  color: HexColor("#00bcd4"),
                  child: Text(
                    'Student',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserLogin()),
                    );
                  },
                ),
              ),
              ButtonTheme(
                height: 60.0,
                minWidth: 180.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    side: BorderSide(color: HexColor("#00bcd4"), width: 3.0),
                  ),
                  color: HexColor("#00bcd4"),
                  child: Text(
                    'Warden',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WardenLogin()),
                    );
                  },
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 30.0,
          // ),
        ],
      ),
    );
  }
}
