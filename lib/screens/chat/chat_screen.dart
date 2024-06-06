import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/screens/chat/widget/chat_bottom_sheet.dart';
import 'package:meet_by_vesti/screens/chat/widget/chat_sample.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget addHeight(double height) => SizedBox(height: height.h);
  Widget addWidth(double width) => SizedBox(width: width.h);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            backgroundColor: Colors.white,
            titleSpacing: 0,
            elevation: 1,
            scrolledUnderElevation: 1,
            leading: IconButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  Future.delayed(Duration(milliseconds: 100), () {
                    context.go('/home');
                  });
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded)),
            title: Row(
              children: [
                SizedBox(
                  width: 60.w,
                  child: CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/images/profile_pic.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                addWidth(4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Janes Cooper',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16.sp),
                    ),
                    addHeight(2),
                    Text(
                      'Active now',
                      style:
                          TextStyle(color: Color(0xff838383), fontSize: 16.sp),
                    )
                  ],
                )
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding:
            EdgeInsets.only(top: 20.h, right: 28.w, left: 18.w, bottom: 80.h),
        children: [
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
        ],
      ),
      bottomSheet: ChatBottomSheet(),
    );
  }
}
