  import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyCustomClipperForAppBar extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    // TODO: implement getClip
   Path path = Path();
   var firststartpoint = Offset(size.width+20,size.height-1);
   var firstendpoint = Offset(size.width+40,size.height-40);
   var secondstartpoint = Offset(size.width+50,size.height - 55);
  var secondendpoint = Offset(size.width+60 ,size.height - 50);
  var thirdstartpoint = Offset( size.width+80,size.height - 30);
   var thirdendpoint = Offset(size.width + 100 ,size.height-20);

   path.lineTo(0 , size.height-55);
     path.quadraticBezierTo(

         firststartpoint.dx , firststartpoint.dy,
         firstendpoint.dx , firstendpoint.dy);




   path.quadraticBezierTo(

       secondstartpoint.dx , secondstartpoint.dy,
       secondendpoint.dx , secondendpoint.dy);


  path.quadraticBezierTo(

    thirdstartpoint.dx , thirdendpoint.dy,
    thirdendpoint.dx , thirdendpoint.dy);





   path.lineTo(size.width+100,size.height-100);
path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true ;
  }


}