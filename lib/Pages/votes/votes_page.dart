import 'package:get/get.dart';
import 'package:sidebaaar/Pages/votes/votes_controller.dart';
import 'package:flutter/material.dart';
import 'package:sidebaaar/Utills/VotesList.dart';

import '../../Utills/custom_clipper.dart';
import '../../Utills/listview_kullanimi.dart';

class VotePage extends GetView<VotesController> {
  const VotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VoteList(),
      ),

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
    colors: [ Colors.greenAccent , Colors.white  ],
    begin: Alignment.topLeft,
    end:  Alignment.bottomRight,


    )
    ),
    ),
    ),
    )

    ),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}
