import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/dashboard/dashboard_bindings.dart';
import 'package:sidebaaar/Pages/dashboard/dashboard_page.dart';
import 'package:sidebaaar/Pages/home/home_page.dart';
import 'package:sidebaaar/Pages/dashboard/dashboard_controller.dart';
import 'package:sidebaaar/routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

getPages: Routes.routes,
      initialRoute: '/',
      initialBinding: DashboardBinding(),
      debugShowCheckedModeBanner: false,

    );
  }
}

