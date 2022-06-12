import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'Post_Model.dart';

class PostModelController extends GetxController{
Post_Model? post_list ;
var isDataLoading = false.obs;
getUserInformationFromApi()async  {


  try{
    isDataLoading(true);
http.Response response = await http.get(Uri.tryParse('https://dummyapi.io/data/v1/post?limit=10')!,headers: {'app-id':'62a5be9a723a779cfc5bdae1'});

//success
  if(response.statusCode==200){
    //success

    var result = jsonDecode(response.body);
    post_list = Post_Model.fromJson(result);
    print('Succesfuly fetch items');
  }

  }catch(e) {
    print('error while taking data $e');
  }finally{
    isDataLoading(false);
  }
}

@override
void onInit() {
  // TODO: implement onInit
  super.onInit();
  getUserInformationFromApi();
}
}