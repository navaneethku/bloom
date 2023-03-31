import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<Widget> myChats = List.generate(
    20,
    (index) => Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(24))),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/noimage.png",
                width: 100,
                height: 100,
              ),
              Text("John Doe"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                InkWell(
                  onTap: () => Get.toNamed(Routes.PAYMENT),
                  child: Text(
                    "Chat",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff9D63E5),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.green,
                        size: 15,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(color: Colors.green),
                      )
                    ])
              ])
            ],
          ),
        ),
      ),
    ),
  ).reversed.toList();
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: TextField(
                cursorColor: Color(0xff9D63E5),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Color(0xff9D63E5), width: 1)),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white, width: 1)),
                  hintText: "Search new therapist here",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  suffixIcon: InkWell(
                    child: Icon(
                      Icons.search,
                      color: Color(0xff9D63E5),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: myChats.length,
                itemBuilder: (context, index) => myChats[index],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
