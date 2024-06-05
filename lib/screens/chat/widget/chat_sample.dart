import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80.w),
          child: ClipPath(
            clipper: LowerNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffEDEDED),
              ),
              child: Text('I have some new photos. How do you think?'),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(left: 100.w, bottom: 20),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 25),
                decoration: BoxDecoration(
                  color: Color(0xff67A948),
                ),
                child: Text(
                  'Oh yeah, you’re so beautiful',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
