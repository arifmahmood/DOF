import 'package:bubble_widget/bubble_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_to_image/widget_to_image.dart';

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(alignment: Alignment.centerLeft,
          children: [
            CustomPaint(
              size: Size(400,400), //You can Replace this with your desired WIDTH and HEIGHT
              painter: RPSCustomPainter(),
            ),
//            Padding(
//              padding: const EdgeInsets.only(
//                  top: 50,left: 15
//              ),
//              child: Container(
//                  height: 250,
//                  width: 250,
//              ),
//            ),child: CustomPaint(
//  size: Size(400,400), //You can Replace this with your desired WIDTH and HEIGHT
//  painter: RPSCustomPainter(),
//),
//            Padding(
//              padding: const EdgeInsets.only(
//                  top: 50,left: 15
//              ),
//              child: Container(
//                  height: 150,
//                  width: 150,
//                  decoration: BoxDecoration(
//                      color: Colors.white,border: Border.all(color: Colors.red),
//                      borderRadius: BorderRadius.circular(16)),
//                  child: Container(
//                    child: Center(child: Text('imageI')),
//                  )),
//            ),
//            Positioned(left: 10,
//              child: CustomPaint(
//                size: Size(400,500), //You can Replace this with your desired WIDTH and HEIGHT
//                painter: RPSCustomPainter(),
//              ),
//            ),
//
//            Positioned(top: 100,left: 120,
//              child: Padding(
//                padding: const EdgeInsets.only(
//                  top: 50,
//                ),
//                child: Container(
//                    height: 50,
//                    width: 50,
//                    decoration: BoxDecoration(
//                        color: Colors.white,
//                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
//                    child: Container(
//                      child: Center(child: Text('')),
//                    )),
//              ),
//            ),



          ],
        ),

//        Padding(
//          padding: const EdgeInsets.only(
//            top: 50,
//          ),
//          child: Container(
//              height: 150,
//              width: 150,
//              decoration: BoxDecoration(
//                  color: Colors.grey, borderRadius: BorderRadius.circular(16)),
//              child: Container(
//                child: Center(child: Text('image2')),
//              )),
//        ),
      ],
    ));
  }
}


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.13,size.height*0.38);
    path_0.quadraticBezierTo(size.width*0.39,size.height*0.37,size.width*0.35,size.height*0.40);
    path_0.cubicTo(size.width*0.40,size.height*0.38,size.width*0.37,size.height*0.56,size.width*0.38,size.height*0.60);
    path_0.cubicTo(size.width*0.38,size.height*0.67,size.width*0.12,size.height*0.61,size.width*0.13,size.height*0.65);
    path_0.quadraticBezierTo(size.width*0.12,size.height*0.65,size.width*0.13,size.height*0.88);

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


