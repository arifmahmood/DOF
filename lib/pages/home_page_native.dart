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

    return
      Column(
        children: [

          Container(

            width: MediaQuery.of(context).size.width *.5,
            height: MediaQuery.of(context).size.height *.25,
          ),

          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width *.5,
                height: MediaQuery.of(context).size.height *.25,
                child: Stack(children: <Widget>[
                  Positioned.fill(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: CustomPaint(
                        painter: RoundedBorderPainter(
                          radius: 20,
                          strokeWidth: 2,
                        ),
                      ),
                    ),
                  ),
                ],)),
              Container(
                width: MediaQuery.of(context).size.width *.5,
                height: MediaQuery.of(context).size.height *.25,
                child: Stack(children: <Widget>[
                  Positioned.fill(
                    child: Padding(
                      padding: EdgeInsets.all(0 ),
                      child: CustomPaint(
                        painter: RoundedBorderPainter(
                          radius: 20,
                          strokeWidth: 2,
                        ),
                      ),
                    ),
                  ),
                ],)),
            ],
          ),
        ],
      );
  }
}
