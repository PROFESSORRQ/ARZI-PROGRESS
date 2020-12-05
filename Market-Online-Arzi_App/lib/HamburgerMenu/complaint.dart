import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ComplaintPage extends StatefulWidget {
  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  String details = "";
  String workerNeeded = 'Carpenter';

  String timeslot = '10-11';
  final FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void inputData() {
    final User user = auth.currentUser;
    final uid = user.email;
    // here you write the codes to input the data into firestore
    // user_email = user.email;
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // String dropdownValue = 'Carpenter';
    //
    // String dropdownVal = '10-11';
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Complaint Box'),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: new Container(
              padding: EdgeInsets.all(20.00),
              child: new Column(children: <Widget>[
                new Divider(
                  height: 100.0,
                ),
                new Text('Worker Needed'),
                Container(
                  child: DropdownButton<String>(
                    value: workerNeeded,
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        workerNeeded = newValue;
                      });
                    },
                    items: <String>['Carpenter', 'Plumber', 'Servant', 'Other']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                new Divider(
                  height: 60.0,
                ),
                new Text('Favourable Time'),
                DropdownButton<String>(
                  value: timeslot,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      timeslot = newValue;
                    });
                  },
                  items: <String>['10-11', '11-12', '12-1', '2-3', '3-4', '4-5']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                new Divider(
                  height: 50.0,
                ),
                Container(
                  child: new TextFormField(
                    onChanged: (String textinput) {
                      setState(() {
                        var inputstr = textinput;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Details about the complaint (optional)",
                      border: OutlineInputBorder(),
                    ),
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Please type a description!!';
                      }
                    },
                    onSaved: (input) => details = input,
                  ),
                ),
                new Divider(
                  height: 20.0,
                ),
                Row(
                children:[

                
                Expanded(
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff01A0C7),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      // onPressed: signIn,
                      onPressed: () {
                        final formState = _formKey.currentState;
                        if (formState.validate()) {
                          formState.save();
                          try {
                            final User user = auth.currentUser;
                            final user_email = user.email;

                            print(user_email);
                            print(workerNeeded);
                            print(timeslot);
                            print(details);
                            firestore.collection('Complaints').add({
                              'user': user_email,
                              'workerNeeded': workerNeeded,
                              'TimeSlot': timeslot,
                              'Details': details,
                            });
                          } catch (e) {
                            print(e.message);
                          }
                        }
                      },
                      child: Text("Submit",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                ]
                )
                // RaisedButton(
                //   color: Colors.blue,
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(18.0),
                //       side: BorderSide(color: Colors.blue)),
                //   onPressed: () {
                //     final formState = _formKey.currentState;
                //     if(formState.validate()) {
                //       formState.save();
                //       try {
                //         final User user = auth.currentUser;
                //         final user_email = user.email;

                //         print(user_email);
                //         print(workerNeeded);
                //         print(timeslot);
                //         print(details);
                //         firestore.collection('Complaints').add({
                //           'user': user_email,
                //           'workerNeeded': workerNeeded,
                //           'TimeSlot': timeslot,
                //           'Details': details,
                //         });
                //       }
                //       catch(e) {
                //         print(e.message);
                //       }
                //     }
                //   },
                //   child: const Text('Submit', style: TextStyle(fontSize: 20)),
                // ),
              ]),
            ),
          ),
        ));
  }
}
