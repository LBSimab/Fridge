import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/cash_page.dart';
import 'package:sidebaaar/Pages/chat/chat_page.dart';
import 'package:sidebaaar/Pages/dashboard/dashboard_page.dart';
import 'package:sidebaaar/Pages/home/home_page.dart';
import 'package:sidebaaar/Pages/profile/profile_page.dart';

import 'Pages/dashboard/dashboard_bindings.dart';
class Routes {
  static final routes = [

    GetPage(name: '/',page: () => Dashboard(),binding: DashboardBinding()),
    GetPage(name: '/Profile',page: () => ProfilePage()),
    GetPage(name: '/Home',page: () => HomePage()),
    GetPage(name: '/Cash',page: () => CashPage()),
    GetPage(name: '/Chat', page:() => ChatPage())


];


}