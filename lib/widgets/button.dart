import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.label});

  final String label;
  // final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    Color defaultColor = Color(0xff67A948);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 21.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(12.r),
            )),
            backgroundColor: defaultColor),
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
