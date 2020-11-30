import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'consumer/userLogin.dart';
import 'package:hexcolor/hexcolor.dart';
import 'consumer/wardenlogin.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
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
        image: DecorationImage(
          image: AssetImage("assests/images/THAPAR_BACKGROUND2.jpg"),
          fit: BoxFit.cover,
        ),
        // border: Border.all(color: Colors.black87, width: 5.0),
        // borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assests/images/thapar_logo2.png'),
          ),
          SizedBox(
             height: 20.0,
          ),
          SizedBox(
  width: 250.0,
  child: TypewriterAnimatedTextKit(
    onTap: () {
        print("Tap Event");
      },
      speed: Duration(milliseconds: 200),
      pause: Duration(milliseconds:  200),
      repeatForever: true,
    text: [
      "Welcome To The ",
      "ARZI Portal",
    ],
    textStyle: TextStyle(
        fontSize: 30.0,
        fontFamily: "Agne",
        fontWeight: FontWeight.bold
    ),
    textAlign: TextAlign.center,
    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
  ),
),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           
          ),
          SizedBox(
            height: 350.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonTheme(
                height: 50.0,
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
              SizedBox(
                height: 10.0,
              ),
              ButtonTheme(
                height: 50.0,
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
