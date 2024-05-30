import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/constants/constants.dart';
import 'package:meet_by_vesti/widgets/button.dart';
import 'package:meet_by_vesti/widgets/onboarding/onboard_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                context.go('/onboarding_2');
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Color(0xff838383)),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 41.h, horizontal: 28.w),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onBoardingItems.length,
                  itemBuilder: (context, index) {
                    final item = onBoardingItems[index];
                    return OnBoardPage(
                        image: item.image,
                        title: item.title,
                        subtext: item.subtext);
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: onBoardingItems.length,
                axisDirection: Axis.horizontal,
                effect: SlideEffect(
                    activeDotColor: const Color(0xff67A948),
                    dotColor: const Color(0xffDBCCE6),
                    dotWidth: 30.w,
                    spacing: 15,
                    dotHeight: 10.h),
              ),
              SizedBox(height: 20.h),
              MyButton(
                label: 'Get Started',
                onPressed: () {
                  context.go('/onboarding_2');
                },
              )
            ],
          ),
        ));
  }
}
