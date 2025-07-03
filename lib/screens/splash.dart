import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled8/componant/widgets/logo.dart';
import 'package:untitled8/resource/colorapp.dart';
import 'package:untitled8/resource/stringValue.dart';
import 'package:untitled8/screens/login.dart';

class Splash extends StatefulWidget {
   Splash({super.key} );

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed( Duration(seconds: 5) , () {
      return Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: 129,
              ),
              Logo(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Image.asset(
                  "assets/images/main.jpg",
                  width: 400,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lorem Ipsum ",
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lorem Ipsum is a dummy text \n used as placeholder ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              )
            ],
          )),
        ),
        Positioned(
            bottom: 515,
            left: 60,
            top: 0,
            child: SvgPicture.asset("assets/images/l1.svg")),
        Positioned(
            bottom: 570,
            left: 135,
            top: 0,
            child: SvgPicture.asset("assets/images/l1.svg")),
        //light1
        Positioned(
          bottom: 150,
          left: 34,
          top: 0,
          child: SvgPicture.asset("assets/images/light2.svg"),
        ),
        //light2
        Positioned(
          bottom: 237,
          left: 110,
          top: 0,
          child: SvgPicture.asset("assets/images/light2.svg"),
        ),
      ],
    );
  }
}
