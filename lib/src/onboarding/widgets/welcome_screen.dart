import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstrings.dart';
import 'package:fashion_app/common/widgets/app_style.dart';
import 'package:fashion_app/common/widgets/custom_button.dart';
import 'package:fashion_app/common/widgets/reusable_text.dart';
import 'package:fashion_app/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60.h),

                Image.asset(R.ASSETS_IMAGES_GETSTARTED_PNG),

                SizedBox(height: 30.h),

                Text(
                  AppText.kWelcomeHeader,
                  textAlign: TextAlign.center,
                  style: appStyle(
                    24,
                    Kolors.kPrimary,
                    FontWeight.bold,
                  ),
                ),

                SizedBox(height: 12.h),

                SizedBox(
                  width: ScreenUtil().screenWidth - 100,
                  child: Text(
                    AppText.kWelcomeMessage,
                    textAlign: TextAlign.center,
                    style: appStyle(
                      11,
                      Kolors.kGray,
                      FontWeight.normal,
                    ),
                  ),
                ),

                SizedBox(height: 25.h),

                GradientBtn(
                  text: AppText.kGetStarted,
                  btnHieght: 35,
                  radius: 20,
                  btnWidth: ScreenUtil().screenWidth - 100,
                  onTap: () {
                    context.go('/home');
                  },
                ),

                SizedBox(height: 10.h),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    ReusableText(
                      text: "Already have an account?",
                      style: appStyle(
                        12,
                        Kolors.kDark,
                        FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/login');
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
