import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/dashboard/dashboard_page.dart';



class VotesController extends GetxController {
  final VoteFormKey = GlobalKey<FormState>();
  final itemNameController = TextEditingController();
  final expdateController = TextEditingController();
  final imgController = TextEditingController();
  final priceController = TextEditingController();
  final decryptionController = TextEditingController();


  @override
  void onInit() {
    // Simulating obtaining the user name from some local storage
    itemNameController.text = 'food';
    expdateController.text = '3';
    imgController.text = 'img';
    priceController.text = '1000';
    decryptionController.text = 'dec';

    super.onInit();
  }

  @override
  void onClose() {
    itemNameController.dispose();
    decryptionController.dispose();

    priceController.dispose();
    expdateController.dispose();

    imgController.dispose();

    super.onClose();
  }

  String? validator(String? value) {
    if (value == null || value.isEmpty ) {
      return 'Please this field must be filled';
    }
    return null;
  }

  void Vote() {
    if (VoteFormKey.currentState!.validate()) {
      checkUser(itemNameController.text, expdateController.text,imgController.text,priceController.text,decryptionController.text).then((auth) {
        if (auth) {
          Get.snackbar('Item', 'Vote was successfull');
          Get.close(1);
        } else {
          Get.snackbar('Item', 'invalid item');
        }

      });
    }
  }

  // Api Simulation
  Future<bool> checkUser(String itemname, String expdate,String img,String price , String decryption) {
    if (itemname == 'food' && expdate == '3'&& img == 'img' && price=='1000' && decryption == "dec") {
      return Future.value(true);
    }
    return Future.value(false);
  }
}