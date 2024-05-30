import 'package:meet_by_vesti/widgets/onboarding/onboard_page.dart';

class onBoardingItem {
  onBoardingItem({required this.image, required this.title, required this.subtext});
  final String image;
  final String title;
  final String subtext;
}

final List<onBoardingItem> onBoardingItems = [
  onBoardingItem(
    image: 'assets/images/onboarding_img_1.png',
    title: 'Did you recently move?',
    subtext: 'Interact with people with the same interest like you'
  ),
  onBoardingItem(
    image: 'assets/images/onboarding_img_2.png',
    title: 'Find and meet people who meet your interest',
    subtext: 'Join us with other millions of people and find your best matches'
  )
];
