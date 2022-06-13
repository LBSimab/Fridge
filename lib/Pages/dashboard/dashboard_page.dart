import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/cash_page.dart';
import 'package:sidebaaar/Pages/chat/chat_page.dart';
import 'package:sidebaaar/Pages/dashboard/dashboard_controller.dart';
import 'package:sidebaaar/Pages/home/home_page.dart';
import 'package:sidebaaar/Pages/votes/votes_page.dart';
import 'package:sidebaaar/Utills/custom_clipper.dart';
import 'package:sidebaaar/Utills/custom_clipper_bottomnav.dart';
import 'dashboard_bindings.dart';




class Dashboard extends GetView<DashboardController> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(


      body: SafeArea(
        child: Obx(
              () =>
              IndexedStack(
                index: controller.tabIndex.toInt(),
                children: [
                  CashPage(),
                  HomePage(),
                  VotePage(),
                  ChatPage()
                ],
              ),
        ),),

      bottomNavigationBar: Obx( () =>
       ClipPath(
         clipper: MyCustomClipperForBottomNavigationBar (),
         child: BottomNavigationBar(

            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
              currentIndex: controller.tabIndex.value,
            elevation: 1,
            onTap: (index) {
              controller.ChangeTabIndex(index);
            },

            type: BottomNavigationBarType.shifting,
            items: [

              BottomNavigationBarItem(icon: Icon(CupertinoIcons.money_dollar) , label: 'Cash',backgroundColor: Colors.yellowAccent),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'home',backgroundColor: Colors.lightBlueAccent),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.arrow_branch), label: 'Vote',backgroundColor: Colors.greenAccent),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_fill), label: 'Chat',backgroundColor: Colors.deepPurple),


            ],
          ),
       ),
      ),

    );


  }
}
