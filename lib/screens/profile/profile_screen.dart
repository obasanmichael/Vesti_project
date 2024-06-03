import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_by_vesti/screens/profile/widget/profile_app_bar.dart';
import 'package:meet_by_vesti/screens/profile/widget/sectioned_listtile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.w);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProfileAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image(
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,
                ),
                radius: 25,
              ),
              title: Text('Albert Fores'),
              subtitle: Text('Creative Director'),
            ),
            addHeight(15),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff67A948),
                borderRadius: BorderRadius.circular(16.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 250.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upgrade for The First Time',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp),
                        ),
                        addHeight(5),
                        Text(
                          'First purchase will get 50% discount',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 48.w,
                    height: 24.h,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(5),
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: Image.asset('assets/images/go_icon.png')),
                  )
                ],
              ),
            ),
            addHeight(36),
            Column(
              children: [
                SectionedListtile(
                    icon: 'assets/images/notify_section.png',
                    title: 'Notification'),
                SectionedListtile(
                    icon: 'assets/images/country.png', title: 'Languages'),
                SectionedListtile(
                    icon: 'assets/images/alert_circle.png',
                    title: 'Help center'),
                SectionedListtile(
                    icon: 'assets/images/settings.png', title: 'Settings'),
                SectionedListtile(
                    icon: 'assets/images/trash-2.png', title: 'Delete account'),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconButton(
                onPressed: () {},
                color: Colors.red,
                icon: ImageIcon(AssetImage(
                  'assets/images/logout.png',
                )),
              ),
              title: Text('Logout'),
              titleTextStyle: TextStyle(color: Colors.red),
              subtitle: Text(
                'Log out the account',
                style: TextStyle(
                  color: Color(0xff838383),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
