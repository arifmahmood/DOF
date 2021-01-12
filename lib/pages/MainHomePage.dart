import 'package:bubble_widget/bubble_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_to_image/widget_to_image.dart';

double lineWidth =2;
double factorHeight =.80;
double factorWidth =.90;

class MainHomePage extends StatelessWidget {
  Color _color = Color(0xFF8E7141);
  double radius = 20 * ((factorWidth+factorHeight)/2);
  double radiusBig = 30 * ((factorWidth+factorHeight)/2);
  double spw1= 260/600;
  double sph1= 240/1000;
  double ppt1= 175/1000;
  double ppl1= 27/600;

  double spw2= 80/600;
  double sph2= 80/1000;
  double ppt2= 340/1000;
  double ppl2= 220/600;

  double spw3= 284/600;
  double sph3= 200/1000;
  double ppt3= 227/1000;
  double ppl3= (287-lineWidth-1)/600;

  double spw4= 284/600;
  double sph4= 80/1000;
  double ppt4= 200/1000;
  double ppl4= (287)/600;

  double spw5= 100/600;
  double sph5= 230/1000;
  double ppt5= 200/1000;
  double ppl5= (471)/600;

  double spw6= 100/600;
  double sph6= 60/1000;
  double ppt6= 370/1000;
  double ppl6= (471)/600;

  double spw7= 250/600;
  double sph7= 311/1000;
  double ppt7= (415- lineWidth-1)/1000;
  double ppl7= (50)/600;

  double spw8= 100/600;
  double sph8= 304/1000;
  double ppt8= (415)/1000;
  double ppl8= (45)/600;

  double spw9= 100/600;
  double sph9= 307/1000;
  double ppt9= (415)/1000;
  double ppl9= (100)/600;

  double spw10= 260/600;
  double sph10= 240/1000;
  double ppt10= (722- lineWidth-1)/1000;
  double ppl10= (27)/600;

  double spw11= 60/600;
  double sph11= 60/1000;
  double ppt11= (700)/1000;
  double ppl11= (240)/600;

  double spw12= 250/600;
  double sph12= 200/1000;
  double ppt12= (709)/1000;
  double ppl12= (287-lineWidth-1)/600;

  double spw13= 250/600;
  double sph13= 100/1000;
  double ppt13= (850)/1000;
  double ppl13= (287)/600;


  double spw14= 100/600;
  double sph14= 200/1000;
  double ppt14= (700)/1000;
  double ppl14= (500)/600;


  double spw15= 250/600;
  double sph15= 288/1000;
  double ppt15= (424)/1000;
  double ppl15= (321)/600;


  double spw16= 25/600;
  double sph16= 282/1000;
  double ppt16= (424+lineWidth+1)/1000;
  double ppl16= (321-lineWidth-1)/600;

  double spw17= 260/600;
  double sph17= 240/1000;
  double ppt17= (165)/1000;
  double ppl17= (313)/600;

  double spw18= 260/600;
  double sph18= 240/1000;
  double ppt18= (451)/1000;
  double ppl18= (18)/600;


  double spw19= 260/600;
  double sph19= 240/1000;
  double ppt19= (735)/1000;
  double ppl19= (313)/600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * factorWidth ,
            height: MediaQuery.of(context).size.height * factorHeight,
            child: Stack(

              children: [

                Positioned(
                  top: MediaQuery.of(context).size.height * factorHeight * ppt1,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw1,
                    height: MediaQuery.of(context).size.height * factorHeight * sph1,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: _color, width: 2),
                        borderRadius: BorderRadius.circular(radius)),
                  ),
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt2,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl2,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw2,
                      height: MediaQuery.of(context).size.height * factorHeight * sph2,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                Positioned(
                  top: MediaQuery.of(context).size.height* factorHeight * ppt3,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl3,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw3,
                    height: MediaQuery.of(context).size.height * factorHeight * sph3,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: _color, width: 2),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(radiusBig))),
                  ),
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height * factorHeight * ppt4,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl4,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw4,
                      height: MediaQuery.of(context).size.height * factorHeight * sph4,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(radius),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt5,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw5,
                      height: MediaQuery.of(context).size.height * factorHeight * sph5,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(radius),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                Positioned(
                  top: MediaQuery.of(context).size.height* factorHeight * ppt10,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw10,
                    height: MediaQuery.of(context).size.height * factorHeight * sph10,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 2, color: _color),
                      borderRadius: BorderRadius.circular(radius),
                    ),
                  ),
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt11,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl11,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw11,
                      height: MediaQuery.of(context).size.height * factorHeight * sph11,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(radius),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                Positioned(
                  top: MediaQuery.of(context).size.height * factorHeight * ppt7,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl7,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw7,
                    height: MediaQuery.of(context).size.height * factorHeight * sph7,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 2, color: _color),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(radiusBig),
                          bottomRight: Radius.circular(radiusBig)),
                    ),
                  ),
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt8,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl8,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw8,
                      height: MediaQuery.of(context).size.height * factorHeight * sph8,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                Positioned(
                  top: MediaQuery.of(context).size.height* factorHeight * ppt12,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl12,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw12,
                    height: MediaQuery.of(context).size.height * factorHeight * sph12,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: _color, width: 2),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(radiusBig))),
                  ),
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt13,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl13,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw13,
                      height: MediaQuery.of(context).size.height * factorHeight * sph13,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(radius),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt14,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl14,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw14,
                      height: MediaQuery.of(context).size.height * factorHeight * sph14,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(radius),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt15,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl15,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw15,
                      height: MediaQuery.of(context).size.height * factorHeight * sph15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(radius),
                          bottomRight: Radius.circular(radius)),
                        border: Border.all(color: _color, width: 2),
                      ),
                    )),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt16,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl16,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw16,
                      height: MediaQuery.of(context).size.height * factorHeight * sph16,
                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(radius),
                          color: ThemeData().scaffoldBackgroundColor),
                    )),

                //menus

                Positioned(
                  top: MediaQuery.of(context).size.height * factorHeight * ppt1,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw1,
                    height: MediaQuery.of(context).size.height * factorHeight * sph1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Maliyoun'),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height* factorHeight * ppt17,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl17,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw17,
                    height: MediaQuery.of(context).size.height * factorHeight * sph17,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: _color, width: 2),
                        borderRadius: BorderRadius.circular(radius)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('About Us'),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height * factorHeight * ppt18,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl18,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw18,
                    height: MediaQuery.of(context).size.height * factorHeight * sph18,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: _color, width: 2),
                        borderRadius: BorderRadius.circular(radius)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Latest News'),
                      ],
                    ),
                  ),
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height* factorHeight * ppt15,
                    left: MediaQuery.of(context).size.width * factorWidth * ppl15,
                    child: Container(
                      width: MediaQuery.of(context).size.width * factorWidth * spw15,
                      height: MediaQuery.of(context).size.height * factorHeight * sph15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Military Pension'),
                        ],
                      ),
                    )),
                ///
                Positioned(
                  top: MediaQuery.of(context).size.height* factorHeight * ppt10,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw10,
                    height: MediaQuery.of(context).size.height * factorHeight * sph10,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Service'),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height* factorHeight * ppt19,
                  left: MediaQuery.of(context).size.width * factorWidth * ppl19,
                  child: Container(
                    width: MediaQuery.of(context).size.width * factorWidth * spw19,
                    height: MediaQuery.of(context).size.height * factorHeight * sph19,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: _color, width: 2),
                        borderRadius: BorderRadius.circular(radius)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('FeedBack'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
