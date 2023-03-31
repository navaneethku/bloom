import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../routes/app_pages.dart';
import '../controllers/ready_msg_controller.dart';

class ReadyMsgView extends GetView<ReadyMsgController> {
  const ReadyMsgView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(leading: Icon(Icons.verified_user), title: Text("John Doe")),
          Divider(
            thickness: 2,
            color: Color(0xff9D63E5),
          ),
          Container(
            width: Get.width * 0.6,
            height: Get.width * 0.4,
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Ready to Chat?",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () =>
                          Get.toNamed(Routes.CHAT_ROOM),
                      child: Text(
                        "Yes",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      "No",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            )),
          )
        ],
      ),
    ));
  }
}
