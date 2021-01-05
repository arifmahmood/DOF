import 'dart:io';

import 'package:DOF/widget/profile_card_painter.dart';
import 'package:DOF/widget/rounded_corner.dart';
import 'package:flutter/material.dart';

class HomeScreenNative extends StatefulWidget {
  @override
  HomeScreenNativeState createState() => new HomeScreenNativeState();
}

class HomeScreenNativeState extends State<HomeScreenNative> {
  @override
  Widget build(BuildContext context) {
    return new Container(
       child: Image.asset(
          'assets/home.jpg',
        )
    );
    /*return new Container(
      width: MediaQuery.of(context).size.width *.5,
        child: Padding(
          padding:  const EdgeInsets.all(50),
          child: Stack(children: <Widget>[
            Positioned.fill(
              child: CustomPaint(
                painter: RoundedBorderPainter(
                  radius: 20,
                  strokeWidth: 2,
                  bottomBorderColor: Colors.red,
                  leftBorderColor: Colors.red,
                  rightBorderColor: Colors.red,
                  topBorderColor: Colors.red,
                ),
              ),
            ),
          ],),
        ));*/
  }
}
