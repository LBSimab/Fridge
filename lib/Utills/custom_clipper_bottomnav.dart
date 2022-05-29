  import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyCustomClipperForBottomNavigationBar extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    // TODO: implement getClip
   Path path = Path();
   var firststartpoint = Offset(size.width-100,size.height+30);
   var firstendpoint = Offset(size.width-100,size.height+35);
   var secondstartpoint = Offset(size.width+100,size.height-20 );
  var secondendpoint = Offset(size.width+100,size.height -25 );
  var thirdstartpoint = Offset( size.width,size.height -30);
   var thirdendpoint = Offset(size.width ,size.height-35);

   path.lineTo(0 , size.height);
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