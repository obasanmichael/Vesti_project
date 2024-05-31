import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_by_vesti/screens/home/widget/app_bar.dart';
import 'package:meet_by_vesti/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.w);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              MyAppBar(),
              addHeight(40),
              Container(
                width: 428.w,
                height: 600.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 616.h,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage('assets/images/display_img.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: -70,
                      left: 65.w,
                      right: 65.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70.w,
                                height: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Icon(Icons.close,
                                    color: Colors.red, size: 40.w),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 100.w,
                                height: 100.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Icon(Icons.favorite,
                                    color: Colors.pink.shade100, size: 40.w),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70.w,
                                height: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Icon(Icons.star,
                                    color: Colors.blue.shade300, size: 40.w),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
