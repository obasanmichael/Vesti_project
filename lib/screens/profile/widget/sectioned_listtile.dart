import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionedListtile extends StatelessWidget {
  const SectionedListtile({
    super.key,
    required this.icon, 
    required this.title
  });

  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage(icon)),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
