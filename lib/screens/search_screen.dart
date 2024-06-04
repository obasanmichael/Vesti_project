import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meet_by_vesti/widgets/info_container/info_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void showInfoModalSheet() {
      showModalBottomSheet(
        useSafeArea: true,
        elevation: 0,
        backgroundColor: Colors.white,
        isScrollControlled: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const InfoContainer(),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg/back_arrow.svg',
            width: 60,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            'All Matches',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/Notification.svg',
                width: 60,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
        child: SingleChildScrollView(
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25.0,
              mainAxisSpacing: 25.0,
              childAspectRatio: 0.75, // Adjust aspect ratio as needed
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              // Replace this return statement with your card widget
              return InkWell(
                onTap: showInfoModalSheet,
                child: Image.asset(
                  'assets/images/image_card.png',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
