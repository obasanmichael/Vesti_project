import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/widgets/button.dart';
import 'package:meet_by_vesti/widgets/outlined_button.dart';

class FinalOnboardingScreen extends StatelessWidget {
  const FinalOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 41.h, horizontal: 28.w),
        child: Column(
          children: [
            Spacer(),
            Image(
              image: AssetImage('assets/images/onboarding_img_3.png'),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    'Find your prefereces partners',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 28.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Join us with other millions of people and find your best matches',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            MyButton(
                onPressed: () {
                  context.go('/auth');
                },
                icon: Icon(
                  Icons.phone_android_outlined,
                  color: Colors.white,
                ),
                label: 'Continue with Mobile Number'),
            SizedBox(height: 20.h),
            MyOutlinedButton(
              label: 'Continue with Google',
              image: 'assets/images/google_icon.png',
            )
          ],
        ),
      ),
    );
  }
}
