import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.amber,
            ),
            ElevatedButton(
                onPressed: () {}, child: Text("Sign In With Google")),
          ],
        ),
      ),
    );
  }
}
