import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:market_online/consumer/userSignup.dart';
import 'package:market_online/Screens/wardenHomeScreen.dart';
import 'package:market_online/animation/background_painter.dart';
import 'package:hexcolor/hexcolor.dart';

class wardenLogin extends StatefulWidget {
  @override
  _wardenLoginState createState() => _wardenLoginState();
}

class _wardenLoginState extends State<wardenLogin> with SingleTickerProviderStateMixin {

  TextStyle style = TextStyle(fontSize: 20.0,color: Colors.white);
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  String _email,_password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.grey,
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            SizedBox.expand(
                child: CustomPaint(
                  painter: BackgroundPainter(
                    animation: _controller.view,
                  ),
                )),
            SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(

              ),
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   SizedBox(height: 350.0,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Text(
                        //   'Login',
                        //   style: TextStyle(
                        //     fontSize: 50.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.yellow,
                        //   ),
                        // )
                      ],
                    ),
                    SizedBox(height: 25.0),
                    TextFormField(
                      obscureText: false,
                      style: style,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Email",
                          fillColor: HexColor("#ffa62b"),
                          border:
                          OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide: BorderSide(color: Colors.white, width: 5.0),
                          )
                      ),
                      validator: (input) {
                        if (input.isEmpty) {
                          return 'Please type an email!!';
                        }
                      },
                      onSaved: (input) => _email = input,
                    ),
                    SizedBox(height: 25.0),
                    TextFormField(
                      obscureText: true,
                      style: style,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          fillColor: HexColor("#000000"),
                          hintText: "Password",
                          border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                      ),
                      validator: (input) {
                        if (input.length < 6) {
                          return 'your password need to be at least 6 characters';
                        }
                      },
                      onSaved: (input) => _password = input,
                    ),
                    SizedBox(height: 35.0,),
                    Row(
                      children: [
                        //Register Button
                        // Expanded(
                        //   child: Material(
                        //     elevation: 5.0,
                        //     borderRadius: BorderRadius.circular(30.0),
                        //     color: Color(0xff01A0C7),
                        //     child: MaterialButton(
                        //       minWidth: MediaQuery.of(context).size.width/4,
                        //       padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        //       onPressed: () {
                        //         Navigator.push(context, MaterialPageRoute(builder: (context) => userSignup()));
                        //       },
                        //       child: Text("Register",
                        //           textAlign: TextAlign.center,
                        //           style: style.copyWith(
                        //               color: Colors.white, fontWeight: FontWeight.bold)
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(width: 10.0,),
                        //Login Button
                        Expanded(
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xff01A0C7),
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width/4,
                              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              // onPressed: signIn,
                              onPressed: () {
                                signIn();
                                _controller.forward(from:0);
                              },
                              child: Text("Login",
                                  textAlign: TextAlign.center,
                                  style: style.copyWith(
                                      color: Colors.white, fontWeight: FontWeight.bold)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0,),
                  ],
                ),
              ),
            ),
          ),
    ]
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    await Firebase.initializeApp();
    if(formState.validate()) {
      // Linking to Firebase
      formState.save();
      try {
        FirebaseAuth auth = FirebaseAuth.instance;
        UserCredential user = await auth.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => wardenHomeScreen()));
      }
      catch(e) {
        print(e.message);
      }
    }
  }

}
