import 'package:flutter/cupertino.dart';

class CustomCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double curveHeight = 0.0;

    path.moveTo(0, curveHeight);
    path.quadraticBezierTo(size.width * .5, 0, size.width * 0.5, 0);
    path.quadraticBezierTo(size.width * 0.75, 0, size.width, curveHeight);
    path.lineTo(size.width, size.height - curveHeight);
    path.quadraticBezierTo(size.width * 0.75, size.height, size.width * 0.5, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height, 0, size.height - curveHeight);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}