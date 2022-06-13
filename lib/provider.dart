import 'package:get/get.dart';

class UserProvider extends GetConnect {
  // Get request
  Future<dynamic> getProfile() async {

    final response = await get( 'https://dummyapi.io/data/v1/user?limit=10',headers: "app-id" : "0JyYiOQXQQr5H9OEn21312" );

if(response.status.hasError){
  return Future.error(response.statusText!);
}
else{
  return response.body;
}

  }


}
