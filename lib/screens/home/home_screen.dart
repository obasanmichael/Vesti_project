import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_by_vesti/screens/home/widget/app_bar.dart';
import 'package:meet_by_vesti/widgets/filter_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _openFilterContainer() {
    showModalBottomSheet(
      useSafeArea: true,
      elevation: 0,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const FilterContainer(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.w);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
                              onTap: _openFilterContainer,
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
    );
  }
}
