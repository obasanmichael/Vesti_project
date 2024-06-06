import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/widgets/button.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  Widget addHeight(double height) => SizedBox(height: height.h);
  Widget addWidth(double width) => SizedBox(width: width.h);
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              context.go('/auth');
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Spacer(),
              Card(
                elevation: 0,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create new password',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 24.sp),
                    ),
                    addHeight(5),
                    Text(
                      'Welcome back! Please enter your details.',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff838383),
                      ),
                    ),
                    addHeight(64),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Create new password',
                          labelStyle: TextStyle(color: Color(0xff838383))),
                    ),
                    addHeight(24),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Confirm password',
                          labelStyle: TextStyle(color: Color(0xff838383))),
                    ),
                    addHeight(24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password must have :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14.sp),
                        ),
                        addHeight(12),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: Checkbox(
                                value: isChecked,
                                activeColor: Color(0xff67A948),
                                onChanged: (newBool) {
                                  setState(() {
                                    isChecked = newBool;
                                  });
                                },
                              ),
                            ),
                            addWidth(5),
                            Text('I agree to Terms and condition')
                          ],
                        ),
                      ],
                    ),
                    addHeight(32),
                    MyButton(label: 'Register', onPressed: () {})
                  ],
                ),
              ),
              Spacer(),
              Spacer(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
