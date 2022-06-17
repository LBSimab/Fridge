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

class DataProvider extends GetConnect {
  // Get request
  Future<List<dynamic>> getData() async {

    final response = await get('https://randomuser.me/api/?results=10');

    if(response.status.hasError){
      return Future.error(response.statusText!);
    }
    else{
      return response.body['results'];
    }

  }


}


class RandomProvider extends GetConnect {
  // Get request
  Future<List<dynamic>> getRandom() async {

    final response = await get('https://random-data-api.com/api/number/random_number');

    if(response.status.hasError){
      return Future.error(response.statusText!);
    }
    else{
      return response.body['results'];
    }

  }


}

class FoodProvider extends GetConnect {
  // Get request
  Future<List<dynamic>> getFood() async {

    final response = await get('https://www.themealdb.com/api/json/v1/1/search.php?f=s');

    if(response.status.hasError){
      return Future.error(response.statusText!);
    }
    else{
      return response.body['meals'];
    }

  }


}
