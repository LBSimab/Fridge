import 'package:get/get.dart';

class UserProvider extends GetConnect {
  // Get request
  Future<List<dynamic>> getProfile() async {

    final response = await get('https://randomuser.me/api/?results=10');

if(response.status.hasError){
  return Future.error(response.statusText!);
}
else{
  return response.body['results'];
}

  }


}
