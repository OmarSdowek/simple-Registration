import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resource/colorapp.dart';
import '../../resource/stringValue.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (bounds) {
          return LinearGradient(colors: [
            Colorapp.Kprimery,
            Colorapp.Ksecand,
          ]).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height));
        },
        child: Text(
          Stringvalue.KLogo,
          style: TextStyle(fontSize: 80, color: Colors.white , fontFamily: "prime"),
        ),
      ),
    );
  }
}
