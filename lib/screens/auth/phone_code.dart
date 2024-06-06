import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/widgets/button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneCode extends StatelessWidget {
  const PhoneCode({super.key});

  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.h);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              context.go('/phone_login1');
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
                      'My code is',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 24.sp),
                    ),
                    addHeight(50),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value) {},
                      pinTheme: PinTheme(
                        fieldOuterPadding:
                            EdgeInsets.symmetric(horizontal: 10.w),
                        shape: PinCodeFieldShape.underline,
                        fieldHeight: 50.h,
                        fieldWidth: 76.w,
                        inactiveColor: Colors.black,
                        selectedColor: Colors.green,
                      ),
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Söhne',
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    addHeight(35),
                    MyButton(
                      label: 'Continue',
                      onPressed: () {
                        context.go('/auth');
                      },
                    )
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
