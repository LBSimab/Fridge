import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/home/home_controller.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import '../../Utills/custom_clipper.dart';
class HomePage extends GetView<HomeController> {

  @override
  Widget build( context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      drawer: Drawer(
        child: Container(

          color: Colors.transparent,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/Cat.jpg'),
                  ),
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 00.0),
                Text(
                  "Person.vtrNm",
                  style: TextStyle(
                    color: Colors.deepOrange[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 00.0),
                Text(
                  'ّFavorite day',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Person.fvrtday",
                  style: TextStyle(
                    color: Colors.deepOrange[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 0.0),
                Text(
                  'Current Passed Votes',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Person.vtpssrtio.toString",
                  style: TextStyle(
                    color: Colors.deepOrange[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),

              ])
        ),

      ),











      body: SafeArea(child: Text("Home screen")),



      appBar:   PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(centerTitle: true,title: Text('fridge',style: TextStyle(
            color: Colors.black87,

            fontSize: 24 ,
            fontWeight: FontWeight.bold,
          ),),
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black87),
            flexibleSpace: ClipPath(
              clipper: MyCustomClipperForAppBar(),
              child: Container(
                decoration: BoxDecoration(
                    gradient:  LinearGradient(
                      colors: [ Colors.lightBlueAccent , Colors.white  ],
                      begin: Alignment.topLeft,
                      end:  Alignment.bottomRight,


                    )
                ),
              ),
            ),
          )

      ),






























































    );
  }
}
