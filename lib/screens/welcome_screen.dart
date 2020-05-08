import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The welcome screen, first screen when the user will launch the app
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.lightBlueAccent, Colors.blue[900]])),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 5)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Dash Laifu',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lobster(fontSize: 50.0),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      //TODO: Create a custom widget for the buttons
                      FlatButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
