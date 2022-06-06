import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/votes/votes_controller.dart';

class AddVote extends GetView<VotesController>{
  @override
  Widget build(BuildContext context) {
    final VotesController controller = Get.put(VotesController());
    //
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.itemNameController,
                decoration: const InputDecoration(labelText: 'itemname'),
                  validator: controller.validator
              ),
              TextFormField(
                controller: controller.expdateController,
                decoration: const InputDecoration(labelText: 'exp'),
validator: controller.validator,
                obscureText: true,
              ),
              TextFormField(
                  controller: controller.imgController,
                  decoration: const InputDecoration(labelText: 'img'),
                  validator: controller.validator
              ),
              TextFormField(
                controller: controller.priceController,
                decoration: const InputDecoration(labelText: 'price'),
                validator: controller.validator,
                obscureText: true,
              ),
              TextFormField(
                  controller: controller.decryptionController,
                  decoration: const InputDecoration(labelText: 'dec'),
                  validator: controller.validator
              ),


              ElevatedButton(
                child: Text('Vote'),
                onPressed: controller.Vote  ,
              )
            ],
          ),
        ),
      ),
    );


  }
}
