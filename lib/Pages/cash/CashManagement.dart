import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/cash_controller.dart';

import '../../Utills/custom_clipper.dart';

class CashManagement extends GetView<CashController> {
  @override
  Widget build(BuildContext context) {
    final CashController controller = Get.put(CashController());
    return Scaffold(
      appBar: PreferredSize(
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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.CashManageFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  controller: controller.itemname,
                  decoration: const InputDecoration(labelText: 'itemname'),
                validator: controller.cashvalidator,

              ),
              TextFormField(
                controller: controller.itemprice,
                decoration: const InputDecoration(labelText: 'Price'),
                validator: controller.cashvalidator,


              ),
              TextFormField(
                  controller: controller.Voterid,
                  decoration: const InputDecoration(labelText: 'Voterid'),
                validator: controller.cashvalidator,
obscureText: true,
              ),
              TextFormField(
                controller: controller.addcash,
                decoration: const InputDecoration(labelText: 'price'),



              ),
              TextFormField(
                  controller: controller.cashdecrease,
                  decoration: const InputDecoration(labelText: 'dec'),

              ),


              ElevatedButton(
                child: Text('Vote'),
                onPressed:  (){},
              )
            ],
          ),
        ),
      ),
    );
  }

}