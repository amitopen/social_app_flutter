import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:socialappflutter/login_ui/Animation/AnimationBuildLogin.dart';
import 'package:socialappflutter/login_ui/Constant/ColorGlobal.dart';
import 'package:socialappflutter/login_ui/Constant/TextField.dart';
import 'package:socialappflutter/login_ui/Constant/frequentWidget.dart';
import 'package:socialappflutter/login_ui/HomePage/HomePage.dart';
import 'package:socialappflutter/pages/home.dart';

import 'AuthButton.dart';
import 'SignUpPage.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  var top = FractionalOffset.topCenter;
  var bottom = FractionalOffset.bottomCenter;
  double width = 190.0;
  double widthIcon = 200.0;






  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }



  var list = [
    Colors.lightGreen,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorGlobal.colorPrimaryDark,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(),
                height: size.height,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [
                      ColorGlobal.colorPrimaryDark.withOpacity(0.7),
                      ColorGlobal.colorPrimary,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOutQuad,
//                top: keyboardOpen ? -size.height / 3.2 : 0.0,
                child: AnimationBuildLogin(
                  size: size,
                  yOffset: size.height / (1.36),
                  color: ColorGlobal.whiteColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: (70)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/Icon/iconn.png',
                      height: 100,
                      width: 100,
                      color: ColorGlobal.whiteColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:(200)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome Back !',
                      style: TextStyle(
                        color: ColorGlobal.whiteColor,
                        fontSize: 24.0,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }

}

