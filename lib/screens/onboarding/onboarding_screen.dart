import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/constants/constants.dart';
import 'package:meet_by_vesti/widgets/button.dart';
import 'package:meet_by_vesti/widgets/onboarding/onboard_page.dart';

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
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          TextButton(
            onPressed: () {
              context.go('/onboarding_2');
            },
            child: Text('Skip'),
          ),
          PageView.builder(
            controller: _pageController,
            itemCount: onBoardingItems.length,
            itemBuilder: (context, index) {
              final item = onBoardingItems[index];
              return OnBoardPage(image: item.image, title: item.title, subtext: item.subtext);
            },
          ),
          MyButton(label: 'Get Started')
        ],
      )),
    );
  }
}
