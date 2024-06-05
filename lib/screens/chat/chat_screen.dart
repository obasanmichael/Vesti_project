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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            leading: IconButton(
                onPressed: () {
                  context.go('/home');
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded)),
            title: Text('lol'),
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
