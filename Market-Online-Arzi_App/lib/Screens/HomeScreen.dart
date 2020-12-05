import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:market_online/Screens/LeaveForm.dart';
import 'package:market_online/HamburgerMenu/announcements.dart';
import 'package:market_online/HamburgerMenu/canteen.dart';
import 'package:market_online/HamburgerMenu/complaint.dart';
import 'package:market_online/HamburgerMenu/info.dart';
import 'package:market_online/HamburgerMenu/laundry.dart';
import 'package:market_online/HamburgerMenu/mess.dart';
import 'package:market_online/HamburgerMenu/rules.dart';
import 'package:firebase_auth/firebase_auth.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     // debugShowCheckedModeBanner: false,
//     home:HomeScreen(),
//   ));
// }

String user;

class HomeScreen extends StatefulWidget {
  final String id;

  HomeScreen({Key key, @required this.id}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState(id: id);
}

class HomeScreenState extends State<HomeScreen> {
  final String id;

  HomeScreenState({Key key, @required this.id});

  String result = "hey there !";

  Future _scanQR() async {
    try {
      String qrResult = await FlutterBarcodeScanner.scanBarcode(
              "#000000", "Cancel", true, ScanMode.QR) ??
          "Shrey";
      setState(() {
        result = qrResult;
      });
      // Navigator.push(context, MaterialPageRoute(builder: (context) => LeaveForm()));
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
    // }
    // } on FormatException{
    //
    // }catch (ex){
    //
    // }
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  String userName() {
    final User user = auth.currentUser;
    final uid = user.email;

    return uid;
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
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: new Drawer(
        child: ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Welcome"),
            accountEmail: Text(userName()),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'http://4.bp.blogspot.com/-RMs5ZFqAt3c/VgRA91henqI/AAAAAAAAKVk/2bBEZBmGi3o/s1600/jay-shree-krishna-wall-paper-image.jpg'),
            ),
          ),
          new ListTile(
            leading: Icon(Icons.campaign),
            title: new Text('Announcements'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new AnnouncementsPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.article),
            title: new Text('Hostel Rules'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new RulesPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.info),
            title: new Text('Hostel Information'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new InfoPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.local_dining),
            title: new Text('Mess Details'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new MessPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.feedback),
            title: new Text('Complaint Box'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new ComplaintPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.fastfood),
            title: new Text('Hostel Canteen'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new CanteenPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.local_laundry_service),
            title: new Text('Hostel Laundry'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new LaundryPage()));
            },
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt_rounded),
        label: Text("Scan"),
        onPressed: () {
          _scanQR();
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LeaveForm(userid: this.id)));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
