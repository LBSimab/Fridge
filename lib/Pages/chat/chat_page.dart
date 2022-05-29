import 'package:get/get.dart';
import 'package:sidebaaar/Pages/cash/cash_controller.dart';
import 'package:flutter/material.dart';

import '../../Utills/custom_clipper.dart';
import 'chat_controller.dart';



class ChatPage extends GetView<ChatController> {
  const ChatPage({Key? key}) : super(key: key);

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
                        colors: [ Colors.deepPurple , Colors.white  ],
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
        child: Text('Chat'),
      ),
    );
  }
}
