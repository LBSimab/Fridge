import 'package:get/get.dart';

class DashboardController extends GetxController{
var tabIndex = 0.obs;
void ChangeTabIndex(int index){
tabIndex.value = index;
update();

}



}