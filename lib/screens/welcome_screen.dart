import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_register_ui/constants/appcolors.dart';
import 'package:login_register_ui/constants/sceeensize.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  final String assetName = 'assets/welcome.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            'Welcome',
            style: TextStyle(
                fontSize: 18, letterSpacing: 3, fontWeight: FontWeight.w900),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: screenHeight(context) / 4,
            width: screenWidth(context),
            child: SvgPicture.asset(
              assetName,
              fit: BoxFit.contain,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              height: screenHeight(context) / 15,
              width: screenWidth(context) / 4,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kPrimary,
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, letterSpacing: 3),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
