import 'package:bloom/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Break free from Stress!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff8349CB),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          image: Center(
              heightFactor: 0,
              child: Lottie.asset("assets/lottie/first_intro.json",
                  width: Get.width, height: Get.width)),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Colors.orange,
            ),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                '''Personalized Therapy Search''',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff8349CB),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          image: Center(
              heightFactor: 0,
              child: Lottie.asset("assets/lottie/second_intro.json",
                  width: Get.width, height: Get.width)),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.HOME),
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff9D63E5),
                  ),
                  child: Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
              )
            ],
          ),
          image: Center(
              heightFactor: 0,
              child: Lottie.asset("assets/lottie/third_intro.json",
                  width: Get.width, height: Get.width)),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
      ],
      showSkipButton: true,
      skip: const Text(
        "Skip",
        style:
            TextStyle(fontSize: 18, letterSpacing: 1, color: Color(0xff8349CB)),
      ),
      next: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xff9D63E5),
        ),
        child: Image.asset(
          "assets/images/123.png",
          height: 50,
          width: 50,
        ),
      ),
      done: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Color(0xff9D63E5)),
        child: Image.asset(
          "assets/images/checked.png",
          height: 50,
          width: 50,
        ),
      ),
      onDone: () => Get.offAllNamed(Routes.HOME),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(40.0, 7),
        activeColor: Color(0xffFFBCC1),
        color: Color(0xff6CD4FF),
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    ));
  }
}
