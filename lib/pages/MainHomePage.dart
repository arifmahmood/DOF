import 'package:bubble_widget/bubble_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_to_image/widget_to_image.dart';

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .85,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  //Maliyoung card//
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 10, left: 10, top: 20, bottom: 10),
                    child: Container(
                      width: 170,
                      height: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Maliyoun'),
                        ],
                      ),
                    ),
                  ),

                  //2nd cutoff shape//
                  Positioned(
                      top: 140,
                      left: 120,
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      )),

                  Positioned(
                    top: 115,
                    left: 178,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 180,
                      child: Container(
                        width: 160,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      )),
                  Positioned(
                    top: 12,
                    left: 195,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 150,
                        height: 140,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('About Us'),
                          ],
                        ),
                      ),
                    ),
                  ),
                 // Latest news//
                  Positioned(
                    top: 168,
                    left: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 10),
                      child: Container(
                        width: 60,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 170,
                      left: 0,
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      )),
                  //Latest news image 3//
                  Positioned(
                    top: 180,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Latest News'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 366,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 10),
                      child: Container(
                        width: 165,
                        height: 180,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Service'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 368,
                      left: 140,
                      child: Container(
                        width: 150,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      )),
                  Positioned(
                      top: 378,
                      left: 200,
                      child: Container(
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      )),

                  Positioned(
                    top: 162,
                    left: 180,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 160,
                        height: 210,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Military Pension'),
                          ],
                        ),
                      ),
                    ),
                  ),


//Military pension
                  Positioned(
                      top: 175,
                      left: 170,
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Military Pension'),
                          ],
                        ),
                      )),
                  Positioned(
                      top: 383,
                      left: 170,
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      )),

                  //Feedback//
                  Positioned(
                    top: 370,
                    left: 172,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 382,
                      left: 175,
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      )),

                  ///feedback

                  Positioned(
                    top: 385,
                    left: 190,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('FeedBack'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
