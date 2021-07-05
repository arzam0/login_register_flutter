import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register_ui/constants/appcolors.dart';
import 'package:login_register_ui/constants/sceeensize.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kPrimary,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: Text(
                    'Please enter your account here',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryLight,
                    ),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'Enter email',
                      icon: Icon(
                        Icons.email,
                        color: Colors.blueGrey.shade800,
                      )),
                ),
              ),

              SizedBox(
                height: screenHeight(context) / 40,
              ),

              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(20)),
                width: screenWidth(context) / 1.2,
                height: screenHeight(context) / 16,
                child: TextField(
                  obscureText: isObscure,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock_rounded,
                        color: Colors.blueGrey.shade800,
                      ),
                      hintText: 'Enter password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                          color: kPrimary,
                        ),
                      )),
                ),
              ),

              GestureDetector(
                onTap: () => print("Forgot Password"),
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(fontSize: 17, color: Colors.blueGrey),
                  ),
                ),
              ),

              //SizedBox(height: sizing.screenSize.height/4,),
              Container(
                height: screenHeight(context) / 16,
                width: screenWidth(context) / 1.3,
                margin: EdgeInsets.only(top: screenHeight(context) / 15),
                decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, letterSpacing: 3),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: screenHeight(context) / 25),
                // padding: EdgeInsets.only(top: sizing.screenSize.height/12),
                child: Text(
                  'Or continue with',
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
              ),

              Container(
                height: screenHeight(context) / 16,
                width: screenWidth(context) / 1.3,
                margin: EdgeInsets.only(top: screenHeight(context) / 23),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kPrimary),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextButton(
                  onPressed: () => print('Login'),
                  child: Text(
                    'Google',
                    style: TextStyle(color: kPrimary, letterSpacing: 3),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 60,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have account? ',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: kPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
