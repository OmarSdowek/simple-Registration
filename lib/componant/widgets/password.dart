import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  final TextEditingController pass;
  final String hint;
  final IconData icon;
   Password({super.key, required this.hint, required this.icon , required this.pass });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: pass,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        prefixIcon: Icon(
          icon  ,
          color: Colors.black,
        ),
        filled: true,
        fillColor: const Color(0xffF2F2F2),
        hintText: hint,
        border: const OutlineInputBorder(),

      ),
    );
  }
}
