import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resource/colorapp.dart';

class Buttomwidget extends StatelessWidget {
  final String name;
  final void Function()? onTap;
 Buttomwidget({super.key, required this.name , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colorapp.Kprimery,
              Colorapp.Ksecand,
            ])
        ),
        child: Center(child: Text(name , style: TextStyle(fontSize: 15),)),
      ),
    );
  }
}
