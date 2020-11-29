import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class LeaveForm extends StatefulWidget {
  @override
  _LeaveFormState createState() => _LeaveFormState();
}

class _LeaveFormState extends State<LeaveForm> {

  String _name,_city,_numberofdays,_roll;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextStyle style = TextStyle(fontSize: 20.0,color: Colors.lightBlueAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Name Field
                TextFormField(
                  obscureText: false,
                  style: style,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Name",
                      fillColor: Colors.blueAccent,
                      border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      )
                  ),
                  // ignore: missing_return
                  validator: (input) {if (input.isEmpty) {return 'Please type a Name!!';}
                  },
                  onSaved: (input) => _name = input,
                ),
                SizedBox(height: 15.0,),
                //City Field
                TextFormField(
                  obscureText: false,
                  style: style,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Travelling to",
                      fillColor: Colors.blueAccent,
                      border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      )
                  ),
                  // ignore: missing_return
                  validator: (input) {if (input.isEmpty) {return 'Please type a valid city name!!';}
                  },
                  onSaved: (input) => _city = input,
                ),
                SizedBox(height: 15.0,),
                //Number of Days
                TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  style: style,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Number of days",
                      fillColor: Colors.blueAccent,
                      border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      )
                  ),
                  // ignore: missing_return
                  validator: (input) {if (input.isEmpty) {return 'Number of days can\'t be zero!!';}
                  },
                  onSaved: (input) => _numberofdays = input,
                ),
                SizedBox(height: 15.0,),
                //Roll Number Field
                TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  style: style,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Roll Number",
                      fillColor: Colors.blueAccent,
                      border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      )
                  ),
                  // ignore: missing_return
                  validator: (input) {if (input.isEmpty) {return 'Roll Number can\'t be zero!!';}
                  },
                  onSaved: (input) => _numberofdays = input,
                ),
                SizedBox(height: 15.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {

                    },
                    child: Text("Submit",
                        textAlign: TextAlign.center,
                        style: style.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}