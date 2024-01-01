import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_revived/homeScreen/main_tab_view.dart';

import '../welcome screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


    startTimer() {
      Timer(const Duration(seconds: 3), () async {
      if (FirebaseAuth.instance.currentUser != null) {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => MainTabView()));
          }
        else {
        Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    }
      });
  }

          @override
          void initState()
      {
        // TODO: implement initState
        super.initState();
        startTimer();
      }

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/7136914.jpg'),
            SizedBox(height: 10.0,),
              Center(
                child: Text("Memory Revived",
                  style: TextStyle(
                    fontSize: 40.0,
                    //fontStyle: FontStyle.italic,
                    fontFamily: "Poppins SemiBold",
                  ),
                ),
              ),
            SizedBox(height: 7,),
              Center(
                child: Text("An app for dementia caregivers",
                  style: TextStyle(
                    fontSize: 18.0,
                    //fontStyle: FontStyle.italic,
                    fontFamily: "Poppins SemiBold",
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

