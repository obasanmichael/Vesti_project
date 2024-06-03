import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text(
            'All Matches',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
          )),
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
              return Image.asset(
                'assets/images/image_card.png',
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }
}
