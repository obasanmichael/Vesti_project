class ProfileSectionItems {
  ProfileSectionItems({
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
}

final List<ProfileSectionItems> profileSectionItems = [
  ProfileSectionItems(
    image: 'assets/images/notify_section.png',
    title: 'Notification',
  ),
  ProfileSectionItems(
    image: 'assets/images/country.png',
    title: 'Language',
  ),
  ProfileSectionItems(
    image: 'assets/images/alert_circle.png',
    title: 'Help Center',
  ),
  ProfileSectionItems(
    image: 'assets/images/settings.png',
    title: 'Setting',
  ),
  ProfileSectionItems(
    image: 'assets/images/trash-2.png',
    title: 'Delete account',
  ),
];
