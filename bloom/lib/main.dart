import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/controllers/auth_controller.dart';
import 'firebase_options.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false ,
        title: "Application",
        initialRoute: authC.isSkipIntro.isTrue
            ? authC.isAuth.isTrue
                ? Routes.HOME
                : Routes.LOGIN
            : Routes.INTRODUCTION,
        getPages: AppPages.routes,
      ),
    );
  }
}
