import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/cash_controller.dart';

class CashManagement extends GetView<CashController> {
  @override
  Widget build(BuildContext context) {
    final CashController controller = Get.put(CashController());
    return Scaffold(
      appBar: AppBar(title: Text('CashManage')),
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