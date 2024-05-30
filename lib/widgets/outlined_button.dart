import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({super.key, required this.label, this.image});

  final String? image;
  final String label;

  @override
  Widget build(BuildContext context) {
    Color defaultColor = const Color(0xffEDEDED);
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        
        style: OutlinedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 15.h),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: defaultColor, ),
              borderRadius: BorderRadius.all(
                Radius.circular(12.r),
              )),
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) ImageIcon(AssetImage(image!)),
            if (image != null) SizedBox(width: 10.w),
            Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
