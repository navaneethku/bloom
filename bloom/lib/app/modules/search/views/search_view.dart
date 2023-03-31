import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  final List<Widget> friends = List.generate(
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
        "Therapist${index + 1}@gmail.com",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      trailing: GestureDetector(
          onTap: () => Get.toNamed((Routes.CHAT_ROOM)),
          child: Chip(label: Text("Message"))),
    ),
  ).reversed.toList();
  SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Colors.red[900],
          title: const Text('Search'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Align(
              child: TextField(
                cursorColor: Colors.red[900],
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white, width: 1)),
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
                      color: Colors.red[900],
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(160),
      ),
      body: friends.length == 0
          ? Center(
              child: Container(
                width: Get.width * 0.7,
                height: Get.width * 0.7,
                child: Lottie.network(
                    "https://assets8.lottiefiles.com/private_files/lf30_e3pteeho.json"),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: friends.length,
              itemBuilder: (context, index) => friends[index]),
    );
  }
}
