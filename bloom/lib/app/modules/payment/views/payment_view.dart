import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
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
          Text("Add Time"),
          SizedBox(
            height: 50,
          ),
          Text("Price: 250 Rs"),
          SizedBox(
            height: 50,
          ),
          Text("Choose payment method"),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () => Get.toNamed(Routes.READY_MSG),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff9D63E5),
              ),
              child: Center(
                  child: Text(
                'Pay',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            ),
          ),
        ],
      ),
    ));
  }
}
