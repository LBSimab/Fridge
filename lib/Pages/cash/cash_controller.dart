import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CashController extends GetxController{

final CashManageFormKey = GlobalKey<FormState>();
final Voterid = TextEditingController();
final itemprice = TextEditingController();
final itemname = TextEditingController();
final addcash = TextEditingController();
final cashdecrease = TextEditingController();
var  cash = 2000;



String? cashvalidator(String? value) {
  if (value == null || value.isEmpty ) {
    return 'Please this field must be filled';
  }
  return null;
}
}
