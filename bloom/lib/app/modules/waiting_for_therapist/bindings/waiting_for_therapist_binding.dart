import 'package:get/get.dart';

import '../controllers/waiting_for_therapist_controller.dart';

class WaitingForTherapistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaitingForTherapistController>(
      () => WaitingForTherapistController(),
    );
  }
}
