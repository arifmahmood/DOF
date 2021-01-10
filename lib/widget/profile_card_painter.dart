import 'dart:math';

import 'package:flutter/material.dart';
//1
class ProfileCardPainter extends CustomPainter {
  //2
  ProfileCardPainter({@required this.color, this.avatarRadius});

  //3
  final Color color;
  final double avatarRadius;

  //4
  @override
  void paint(Canvas canvas, Size size) {
    final shapeBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final topLeft = Offset(shapeBounds.topLeft.dx, shapeBounds.topLeft.dy);
//2
    final avatarBounds = Rect.fromCircle(center: topLeft, radius: 10);
//3
    _drawBackground(canvas, shapeBounds, avatarBounds);
  }
  void _drawBackground(Canvas canvas, Rect shapeBounds, Rect avatarBounds) {
    //1
    final paint = Paint()..color = color;

    //2
    final backgroundPath = Path()
      ..moveTo(shapeBounds.left, shapeBounds.top) //3
      ..lineTo(shapeBounds.bottomLeft.dx, shapeBounds.bottomLeft.dy) //4
      ..arcTo(avatarBounds, -pi, pi, false) //5
      ..lineTo(shapeBounds.bottomRight.dx, shapeBounds.bottomRight.dy) //6
      ..lineTo(shapeBounds.topRight.dx, shapeBounds.topRight.dy) //7
      ..close(); //8

    //9
    canvas.drawPath(backgroundPath, paint);
  }


  //5
  @override
  bool shouldRepaint(ProfileCardPainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
