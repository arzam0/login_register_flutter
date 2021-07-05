import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_register_ui/constants/appcolors.dart';
import 'package:login_register_ui/constants/sceeensize.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObscure = true;
  GlobalKey<FormState> formKey = new GlobalKey();
  bool isLoading = false;

  // final storage = new FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 100, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: screenHeight(context) / 12,
                  child: Text(
                    'Create new account here',
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
                width: screenWidth(context) / 1.2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'Full name',
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
                child: TextFormField(
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

              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                //margin: EdgeInsets.only(right: 20,top: 20),
                child: Text(
                  'Choose a strong password',
                  style:
                      TextStyle(fontSize: 17, color: Colors.blueGrey.shade700),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    // Container(child: Icon(Icons.done,
                    //   color: authController.password.text.length < 8
                    //       ? Colors.blueGrey
                    //       : Colors.green,
                    // )),
                    Text('At Least 8 Characters'),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(child: Icon(Icons.done, color: Colors.green)),
                    Text('Contains at least one  number'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(child: Icon(Icons.done, color: Colors.green)),
                    Text('Contains at least one Upper case'),
                  ],
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
                    'Register',
                    style: TextStyle(color: Colors.white, letterSpacing: 3),
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
                        'Already have an account? ',
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          'Login',
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
