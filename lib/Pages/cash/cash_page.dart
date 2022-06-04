import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/cash_controller.dart';
import 'package:flutter/material.dart';

import '../../Utills/custom_clipper.dart';

class CashPage extends GetView<CashController> {
  const CashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:   PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(centerTitle: true,title: Text('fridge',style: TextStyle(
              color: Colors.black87,

              fontSize: 24 ,
              fontWeight: FontWeight.bold,
            ),),
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black87),
              flexibleSpace: ClipPath(
                clipper: MyCustomClipperForAppBar(),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:  LinearGradient(
                        colors: [ Colors.yellowAccent , Colors.white  ],
                        begin: Alignment.topLeft,
                        end:  Alignment.bottomRight,


                      )
                  ),
                ),
              ),
            )

        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      body: SafeArea(
        child: Text('cash'),
      ),

    );
  }
}
class cashdata {
  final int id;
  final int total;
  final int spend;
  final int surplus;
  final String dec;


  cashdata(this.id, this.total, this.spend,this.dec,this.surplus);
}