import 'package:flutter/material.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/common/widgets/Buttons/secondary_button.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/helpers/device_helpers.dart';

class SplashScreen2 extends StatelessWidget {
  SplashScreen2({super.key});
  // final primaryColor = Color(0xff26408B);
  // final textSecondary = Color(0xFF4D4D4D);

  @override
  Widget build(BuildContext context) {
    print(MDeviceHelper.getBottomNavigationBarHeight());
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Stack(
            children: [
              /// English Button
              Positioned(
                top: 56,
                right: 33,
                child: Container(
                  width: 93,
                  height: 33,
                  alignment: Alignment(0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Color(0xFFC2E7D9), width: 1),
                  ),
                  child: Text(
                    "English",
                    style: TextStyle(
                      fontFamily: 'Khula',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: MColors.textSecondaryColor,
                    ),
                  ),
                ),
              ),

              /// Medcare Logo centered in the screen
              Center(
                child: LogoColumn(
                  textSecondary: MColors.textSecondaryColor,
                  primaryColor: MColors.primaryColor,
                ),
              ),

              /// Bottom Buttons Container
              Positioned(
                bottom:
                    MDeviceHelper.getBottomNavigationBarHeight(), // Adjust this to match your spacing
                left: 28,
                right: 28,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// Next Button
                    MPButton(label: 'Next'),
                    SizedBox(height: 16),

                    /// Register Button
                    MSButton(label: 'Register'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoColumn extends StatelessWidget {
  const LogoColumn({
    super.key,
    required this.textSecondary,
    required this.primaryColor,
  });

  final Color textSecondary;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/logo/logo_2.png',
          width: 183,
          height: 166,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(top: 29, left: 28, right: 28),
          child: Text(
            "We're here to help keep you healthy",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Khula',
              color: textSecondary,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
