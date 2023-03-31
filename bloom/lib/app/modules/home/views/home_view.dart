import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<Widget> myChats = List.generate(
    20,
    (index) => ListTile(
      onTap: () => Get.toNamed(Routes.CHAT_ROOM),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black26,
        child: Image.asset("assets/images/noimage.png"),
      ),
      title: Text(
        "Chat No ${index + 1}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        "Chat No ${index + 1}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      trailing: Chip(label: Text("3")),
    ),
  ).reversed.toList();
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black38),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Chats",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red[900],
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () => Get.toNamed(Routes.PROFILE),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(
                            Icons.person,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: myChats.length,
                itemBuilder: (context, index) => myChats[index],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.SEARCH),
        child: Icon(Icons.search, size: 30),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
