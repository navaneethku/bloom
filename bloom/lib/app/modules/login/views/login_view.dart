import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 500,
                height: 500,
                child: Lottie.network(
                    "https://assets4.lottiefiles.com/private_files/lf30_dn4fjmag.json"),
              ),
              SizedBox(
                child: Text("Sign In Yo! :)"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/images/google.png")),
                      Text("Sign In With Google")
                    ]),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[200],
                    padding: EdgeInsets.symmetric(vertical: 12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
