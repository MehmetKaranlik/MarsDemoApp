import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MarsCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path
      ..lineTo(0, 40.h)
      ..quadraticBezierTo(0, 45.h, 25.w, 45.h)
      ..lineTo(80.w, 45.h)
      ..quadraticBezierTo(100.w, 45.h, 100.w, 50.h)
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
