import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.w);

    return Container(
      padding:
          EdgeInsets.only(right: 18.w, left: 18.w, top: 10.h, bottom: 25.h),
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/svg/file_icon.svg'),
                  ),
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_emotions,
                        color: Color(0xff67A948),
                      )),
                  hintText: 'Send a message',
                  hintStyle:
                      TextStyle(fontSize: 14.sp, color: Color(0xffA2A5B1)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                ),
              ),
            ),
          ),
          addWidth(24),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svg/send.svg'),
          ),
        ],
      ),
    );
  }
}
