import 'package:flutter/material.dart';

import '../Buttons/rectangular_button.dart';
import '../LoginScreen/login_screen.dart';
import '../SignupScreen/signup_screen.dart';
import '../Widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Image.asset(
              'assets/images/6195365.jpg',
              height: size.height * 0.40,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'Memory Revived',
              style: TextStyle(
                fontSize: 35.0,
                color: Color(0xFF000000),
                fontFamily: "Poppins SemiBold",
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                    text: 'LOGIN',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LoginScreen()));
                    }),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                    text: 'REGISTER',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SignUpScreen()));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}