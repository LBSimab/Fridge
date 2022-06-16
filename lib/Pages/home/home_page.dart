import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/home/home_controller.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:sidebaaar/Utills/listview_kullanimi.dart';
import '../../Utills/custom_clipper.dart';
import '../../models/PostModelController.dart';
import '../../models/UserModelController.dart';
class HomePage extends GetView<HomeController> {

  @override
  Widget build( context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final UserModelController controller = Get.put(UserModelController());




    return Scaffold(
      drawer: controller.obx((data)=> Drawer(
          child: Container(

            color: Colors.transparent,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                     radius: 80,
                        backgroundImage: NetworkImage(data![2]['picture']['large']),

                    ),
                  ),
                  Divider(
                    color: Colors.grey[800],
                    height: 60.0,
                  ),
                  Text(
                   'Name',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 00.0),
                  Text(
                    data![2]['name']['first']  + data![2]['name']['last'],
                    style: TextStyle(
                      color: Colors.deepOrange[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: 00.0),
                  Text(
                    'Age',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    data![2]['dob']['age'].toString() ,
                    style: TextStyle(
                      color: Colors.deepOrange[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: 0.0),
                  Text(
                    'Country',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    data![2]['location']['country'],
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
      ),











      body: ListViewKullanimi(),





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
