import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:market_online/HamburgerMenu/MessBill.dart';
import 'package:market_online/HamburgerMenu/aboutUs.dart';
import 'package:market_online/Screens/LeaveForm.dart';
import 'package:market_online/HamburgerMenu/announcements.dart';
import 'package:market_online/HamburgerMenu/canteen.dart';
import 'package:market_online/HamburgerMenu/complaint.dart';
import 'package:market_online/HamburgerMenu/info.dart';
import 'package:market_online/HamburgerMenu/laundry.dart';
import 'package:market_online/HamburgerMenu/mess.dart';
import 'package:market_online/HamburgerMenu/rules.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_particles/particles.dart';
import 'package:flutter_particles/draw_particles.dart';
import 'package:flutter_particles/particle.dart';
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
       backgroundColor: Colors.blue[300],
// body:new Particles(50 , Colors.white),
      appBar: AppBar(
        title: Text("ARZI"),
      ),
      body: Center(
        child: Stack(
                  children:[ 
                    new Particles(50 , Colors.white),
                    Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius:90.0,
                backgroundImage:AssetImage('assests/images/app_logo.PNG')
              )
            ],),]
        )
      ),
      drawer: new Drawer(
        child: ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            accountEmail: Text(userName()),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: AssetImage('assests/images/thapar_logo2.png'),
            ),
          ),
          new ListTile(
            leading: Icon(Icons.campaign,color: Colors.red.shade700,),
            title: new Text('Announcements',style: TextStyle(fontSize: 20),),
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
            leading: Icon(Icons.article,color: Colors.red.shade700,),
            title: new Text('Hostel Rules',style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new RulesPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.info,color: Colors.red.shade700,),
            title: new Text('Hostel Information',style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new InfoPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.local_dining,color: Colors.red.shade700,),
            title: new Text('Mess Details',style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new MessPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.feedback,color: Colors.red.shade700,),
            title: new Text('Complaint Box',style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new ComplaintPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.fastfood,color: Colors.red.shade700,),
            title: new Text('Hostel Canteen',style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new CanteenPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.local_laundry_service,color: Colors.red.shade700,),
            title: new Text('Hostel Laundry',style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new LaundryPage()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.description_sharp,color: Colors.red.shade700,),
            title: new Text('Mess Bill',style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new MessBill()));
            },
          ),
          new ListTile(
            leading: Icon(Icons.call,color: Colors.red.shade700,),
            title: new Text('About Us',style: TextStyle(fontSize: 20,),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutUs()));
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
