import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/features/authentication/login/login.dart';
import 'package:mcare_copy2/features/home/screens/home.dart';
import 'package:mcare_copy2/features/service/service.dart';
import 'package:mcare_copy2/utils/theme/theme.dart';
// import 'package:mcare_copy2/features/authentication/phone_registration.dart';
// import 'package:mcare_copy2/features/authentication/verification/email_verification.dart';
// import 'package:mcare_copy2/splash_screen2.dart';

void main() {
  runApp(MyApp());
}

/// as per figma width : 428 height : 926
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      ),
      // child: MaterialApp(debugShowCheckedModeBanner: false, home: Login()),
    );
  }
}
