import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  Widget addHeight(double height) => SizedBox(height: height.h);
  Widget addWidth(double width) => SizedBox(width: width.w);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: Image(
            image: AssetImage('assets/images/profile.png'),
            fit: BoxFit.cover,
          ),
          radius: 25,
        ),
        addWidth(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location,',
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff838383)),
            ),
            addHeight(2),
            Text(
              'Los Angeles, CA',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.sp),
            ),
          ],
        ),
        Spacer(),
        IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/notification_2.svg',
              width: 50.w,
            )),
      ],
    );
  }
}
