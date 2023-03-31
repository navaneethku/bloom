import 'package:get/get.dart';

import '../controllers/ready_msg_controller.dart';

class ReadyMsgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReadyMsgController>(
      () => ReadyMsgController(),
    );
  }
}
