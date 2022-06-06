import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/cash_controller.dart';

class CashManagement extends GetView<CashController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('appbar'),),
      body: Text('CashManagement page'),
    );
  }

}