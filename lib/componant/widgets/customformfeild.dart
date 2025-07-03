import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hinttext;
  final IconData icon;

  const CustomFormField({
    super.key,
    required this.controller,
    required this.hinttext,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        filled: true,
        fillColor: const Color(0xffF2F2F2),
        hintText: hinttext,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
