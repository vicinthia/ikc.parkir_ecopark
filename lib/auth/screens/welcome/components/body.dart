import 'package:eparking_ecop/auth/screens/login/login_screen.dart';
import 'package:eparking_ecop/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:eparking_ecop/auth/screens/welcome/components/background.dart';
import 'package:eparking_ecop/auth/components/rounded_button.dart';
import 'package:eparking_ecop/theme.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO ELEKTRONIK TIKET",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "poppins",
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            // RoundedButton(
            //   text: "SIGN UP",
            //   color: kPrimaryLightColor,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
