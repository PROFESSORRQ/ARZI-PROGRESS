import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class LeaveForm extends StatefulWidget {
  final String userid;
  LeaveForm({Key key, @required this.userid}) : super(key: key);
  @override
  _LeaveFormState createState() => _LeaveFormState(userid: userid);
}

class _LeaveFormState extends State<LeaveForm> {
  final String userid;
  final FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void inputData() {
    final User user = auth.currentUser;
    final uid = user.uid;
    // here you write the codes to input the data into firestore
    print("\n\n");
    print(uid);
    print("\n\n");

  }

  _LeaveFormState({Key key, @required this.userid});

  String name,city,numberofdays,roll;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextStyle style = TextStyle(fontSize: 20.0,color: Colors.lightBlueAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
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
                SizedBox(height: 15.0,),
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
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please type a name!!';
                    }
                  },
                  onSaved: (input) => name = input,
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
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please type a City name!!';
                    }
                  },
                  onSaved: (input) => city = input,
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
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please type a Number';
                    }
                  },
                  onSaved: (input) => numberofdays = input,
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
                  onSaved: (input) => roll = input,
                ),
                SizedBox(height: 15.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.blue,
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      final formState = _formKey.currentState;
                      if(formState.validate()) {
                        formState.save();
                        try {
                          firestore.collection('Permit').add({
                            'User': userid,
                            'City': city,
                            'Name': name,
                            'Number of days': numberofdays,
                            'Roll Number': roll
                          });
                          formState.reset();
                        }
                        catch(e) {
                          print(e.message);
                        }
                      }

                      print(userid);
                      print(name);
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