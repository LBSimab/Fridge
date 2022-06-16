import 'dart:convert';
import 'package:get/get.dart';
import 'package:sidebaaar/Utills/listview_kullanimi.dart';
import '../provider.dart';
import 'Post_Model.dart';

class PostModelController extends GetxController with StateMixin<List<dynamic>> {


@override
  void onInit(){

  super.onInit();
  FoodProvider().getFood().then((resp){

    change(resp,status: RxStatus.success());
  } ,onError: (err){change(null,status: RxStatus.error(err.toString()));

  });



}

}