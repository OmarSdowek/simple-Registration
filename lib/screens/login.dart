import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:untitled8/componant/widgets/buttomwidget.dart';
import 'package:untitled8/componant/widgets/customformfeild.dart';
import 'package:untitled8/componant/widgets/logo.dart';
import 'package:untitled8/componant/widgets/password.dart';
import 'package:untitled8/resource/colorapp.dart';
import 'package:untitled8/screens/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final pass = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 188,
                  ),
                  Logo(),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Log in to existing LOGO account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomFormField(
                    controller: username,
                    hinttext: "User name",
                    icon: Icons.person_outline,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Password(
                    icon: Icons.remove_red_eye_outlined,
                    hint: "Password",
                    pass: pass,
                  ),
                  SizedBox(height: 4,),
                  Align(
                    alignment: Alignment.centerRight,
                      child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 15),
                  )),
                  SizedBox(height: 13,),
                  Buttomwidget(name: "LOG IN",
                  onTap: () {
                  },
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Or sign up using ",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Ionicons.logo_google , color: Colors.red,size: 45,),
                      Icon(Ionicons.logo_facebook , color: Colors.blue,size: 45,),
                      Icon(Ionicons.logo_android , color: Colors.green,size: 45,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      InkWell(
                        onTap:  () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup(),));
                },
                        child: Text(
                          "  Sign Up",
                          style: TextStyle(fontSize: 15 , color: Colors.blue),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: 40,
            bottom: 750,
            child: SvgPicture.asset("assets/images/Rectangle 12.svg")),
        SvgPicture.asset("assets/images/Rectangle 11.svg")
      ],
    );
  }
}
