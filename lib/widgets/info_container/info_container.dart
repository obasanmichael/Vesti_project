import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meet_by_vesti/widgets/info_container/info_button.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.w);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 18.w),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Up.png'),
            ),
            addHeight(30),
            Row(
              children: [
                Text(
                  'Jenny Wilson, 22 🇧🇯',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28.sp,
                      color: Color(0xff202226)),
                ),
                addWidth(3),
                SvgPicture.asset('assets/svg/check_mark.svg')
              ],
            ),
            addHeight(8),
            Row(
              children: [
                ImageIcon(
                  AssetImage(
                    'assets/images/location_img.png',
                  ),
                  color: Color(0xff67A948),
                ),
                addWidth(3),
                Text(
                  '4 Kilometers away',
                  style: TextStyle(color: Color(0xff838383)),
                ),
              ],
            ),
            addHeight(16),
            Row(
              children: [
                InfoButton(label: 'Art'),
                addWidth(7),
                InfoButton(label: 'Photography'),
                addWidth(7),
                InfoButton(label: 'Film'),
              ],
            ),
            addHeight(32),
            Text(
              'About bio',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
            ),
            addHeight(10),
            Text(
              'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna al...Read more',
              style: TextStyle(
                  color: Color(0xff838383),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            addHeight(32),
            Row(
              children: [
                Text(
                  'Image Gallery',
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style:
                          TextStyle(color: Color(0xff67A948), fontSize: 14.sp),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
