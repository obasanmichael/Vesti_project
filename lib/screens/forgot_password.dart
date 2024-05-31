import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/widgets/button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.h);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              addHeight(64),
              Card(
                elevation: 0,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirm your Email',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 24.sp),
                    ),
                    addHeight(5),
                    Text(
                      'Enter the email associated with your account and we’ll send an email with code to reset your password',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff838383),
                      ),
                    ),
                    addHeight(64),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your Email',
                          labelStyle: TextStyle(color: Color(0xff838383))),
                    ),
                    addHeight(32),
                    MyButton(
                        label: 'Send Code',
                        onPressed: () {
                          context.go('/change-password');
                        })
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
