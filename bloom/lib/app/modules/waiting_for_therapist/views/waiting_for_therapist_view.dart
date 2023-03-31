import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/waiting_for_therapist_controller.dart';

class WaitingForTherapistView extends GetView<WaitingForTherapistController> {
  const WaitingForTherapistView({Key? key}) : super(key: key);
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
                          Get.toNamed(Routes.WAITING_FOR_THERAPIST),
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
