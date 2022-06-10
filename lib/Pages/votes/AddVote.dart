import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/votes/votes_controller.dart';

import '../../Utills/custom_clipper.dart';

class AddVote extends GetView<VotesController>{
  @override
  Widget build(BuildContext context) {
    final VotesController controller = Get.put(VotesController());
    //
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(centerTitle: true,title: Text('Vote',style: TextStyle(
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
                      colors: [ Colors.greenAccent , Colors.white  ],
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
          key: controller.VoteFormKey,
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
