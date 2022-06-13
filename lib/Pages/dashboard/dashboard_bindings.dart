import 'package:get/get.dart';
import 'package:sidebaaar/models/PostModelController.dart';
import 'dashboard_controller.dart';
import '../home/home_controller.dart';
import '../cash/cash_controller.dart';
import '../chat/chat_controller.dart';
import '../votes/votes_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CashController>(() => CashController());
    Get.lazyPut<ChatController>(() => ChatController());
    Get.lazyPut<PostModelController>(() => PostModelController());
  }


}