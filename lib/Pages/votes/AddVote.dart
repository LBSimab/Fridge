import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Pages/votes/votes_controller.dart';

class AddVote extends GetView<VotesController>{
  @override
  Widget build(BuildContext context) {
    final VotesController controller = Get.put(VotesController());
    //
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
                  validator: controller.validator
              ),
              TextFormField(
                controller: controller.passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
validator: controller.validator,
                obscureText: true,
              ),
              ElevatedButton(
                child: Text('Login'),
                onPressed: controller.login,
              )
            ],
          ),
        ),
      ),
    );


  }
}
