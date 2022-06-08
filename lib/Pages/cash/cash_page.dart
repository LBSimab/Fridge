import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/CashManagement.dart';
import 'package:sidebaaar/Pages/cash/cash_controller.dart';
import 'package:flutter/material.dart';

import '../../Utills/custom_clipper.dart';

class CashPage extends GetView<CashController> {


  @override
CashController controller = Get.put(CashController());
  Widget build(BuildContext context) {
    return Scaffold(
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
                        colors: [ Colors.yellowAccent , Colors.white  ],
                        begin: Alignment.topLeft,
                        end:  Alignment.bottomRight,


                      )
                  ),
                ),
              ),
            )

        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Icon(CupertinoIcons.arrow_down),
                onPressed: (){
                  Get.to(CashManagement());
                }
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow.shade500)),
                  child: Text('Cash ManageMent'),
                  onPressed: (){
                    Get.to(CashManagement());
                  }
              ),
            ),
            ElevatedButton(
                child: Icon(CupertinoIcons.arrow_down),
                onPressed: (){
                  Get.to(CashManagement());
                }
            )
          ],
        ),
      body: SafeArea(
        child: Column(
          children: [
            Card (
              color: 2 % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  width: 500,
                    height: 50 ,
                    child: Column(
                      children: [Text("Total Cash",textAlign:TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))

                      ,Text(controller.cash.toString(),style: TextStyle(fontSize: 20),)
                      ],
                    )
                ),
              )
            ),
            Card (
                color: 2 % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                      width: 500,
                      height: 50 ,
                      child: Column(
                        children: [Text("Total Spend",textAlign:TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))

                          ,Text(controller.totalspend.toString(),style: TextStyle(fontSize: 20),)
                        ],
                      )
                  ),
                )
            ),
            Card (
                color: 2 % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                      width: 500,
                      height: 50 ,
                      child: Column(
                        children: [Text("Total Cash",textAlign:TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))

                          ,Text((controller.cash - controller.totalspend).toString(),style: TextStyle(fontSize: 20),)
                        ],
                      )
                  ),
                )
            ),

          ],
        )

      ),

    );
  }
}
