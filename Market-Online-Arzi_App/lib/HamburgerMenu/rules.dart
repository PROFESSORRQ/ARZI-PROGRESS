import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RulesPage extends StatefulWidget {
  @override
  _RulesPageState createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Rules and Regulations'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: Icon(Icons.arrow_right),
            title: new Text("Daily attendance will be marked in hostel at 9:30 PM."),
          ),

          new ListTile(
            leading: Icon(Icons.arrow_right),
            title: new Text("Consumption of alcohol and smoking is strictly prohibited in hostels."),
          ),

          new ListTile(
            leading: Icon(Icons.arrow_right),
            title: new Text("Girls are not allowed to go out of hotels after 9:30 pm."),
          ),
          new ListTile(
            leading: Icon(Icons.arrow_right),
            title: new Text("Students are advised to avoid playing loud music,shouting or making all types of noises which are likely to distract the attention of other hostellers"),
          ),
          new ListTile(
            leading: Icon(Icons.arrow_right),
            title: new Text("Pets of all kinds are prohibited inside the hostels."),
          ),
          new ListTile(
            leading: Icon(Icons.arrow_right),
            title: new Text("No male visitors are allowed to visit girl students in the hostel premises.Parents must supply the name of a local guardian for their wards"),
          ),
          new ListTile(
            leading: Icon(Icons.arrow_right),
            title: new Text("Defaulters will be appropriately punished"),
          ),
         ]
      )
    );;
  }
}
