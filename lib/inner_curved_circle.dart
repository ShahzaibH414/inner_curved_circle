library custom_clipper_package;

import 'package:flutter/material.dart';

class InwardTopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);

    double curveDepth = size.height * 0.1;
    path.lineTo(size.width, curveDepth);
    path.quadraticBezierTo(
      size.width / 2,
      curveDepth * 6,
      0.0,
      curveDepth,
    );

    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
