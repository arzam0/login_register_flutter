import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_register_ui/constants/appcolors.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  SystemUiOverlayStyle style = SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(style);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login  Demo',
      theme: ThemeData(
          primaryColor: kPrimary,
          primaryColorDark: kPrimaryDark,
          accentColor: kPrimaryLight),
      home: WelcomeScreen(),
    );
  }
}
