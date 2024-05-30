import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtext,
  });

  final String image;
  final String title;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image(image: AssetImage(image)),
        Spacer(),
        Text(title),
        SizedBox(height: 15.h),
        Text(subtext),
        Spacer()
      ],
    );
  }
}
