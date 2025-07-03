import 'package:flutter/material.dart';
import 'package:untitled8/screens/login.dart';

import '../componant/widgets/buttomwidget.dart';
import '../componant/widgets/customformfeild.dart';
import '../componant/widgets/logo.dart';
import '../componant/widgets/password.dart';

class Signup extends StatelessWidget {
  final Fname = TextEditingController();
  final Lname = TextEditingController();
  final Username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 140,
              ),
              const Text(
                "Let’s Get Started!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Create an account on MNZL to get all features",
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
                controller: Fname,
                hinttext: "First name",
                icon: Icons.person_outline,
              ),
           const   SizedBox(
                height: 10,
              ),
              CustomFormField(
                controller: Lname,
                hinttext: "Last name",
                icon: Icons.person_outline,
              ),
           const   SizedBox(
                height: 10,
              ),
              CustomFormField(
                controller: Username,
                hinttext: "User name",
                icon: Icons.person_outline,
              ),
          const    SizedBox(
                height: 10,
              ),
              CustomFormField(
                controller: email,
                hinttext: "Email",
                icon: Icons.email,
              ),
          const    SizedBox(
                height: 10,
              ),
              Password(
                icon: Icons.remove_red_eye_outlined,
                hint: "Password",
                pass: password,
              ),
            const  SizedBox(
                height: 10,
              ),
              Password(
                icon: Icons.remove_red_eye_outlined,
                hint: " Confirm Password",
                pass: password,
              ),
            const  SizedBox(
                height: 18,
              ),
              Buttomwidget(
                name: "Create",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
                },
              ),
            const  SizedBox(
                height: 13,
              ),
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      return Navigator.of(context).pop();
                    },
                    child: const Text(
                      " Login here",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
