import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_by_vesti/widgets/button.dart';

class FilterContainer extends StatefulWidget {
  const FilterContainer({super.key});

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  Widget addHeight(double height) => SizedBox(height: height.h);
  Widget addWidth(double width) => SizedBox(width: width.w);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                Text(
                  'Filter',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 16.sp),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                )
              ],
            ),
            addHeight(40),
            Text(
              'Location',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 16.sp),
            ),
            addHeight(12),
            TextField(
              decoration: InputDecoration(hintText: 'Los Angeles, Califonia'),
            ),
            addHeight(48),
            Text(
              'Gender',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 16.sp),
            ),
            addHeight(12),
            DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    indicatorColor: Color(0xff67A948),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Male'),
                      Tab(text: 'Female'),
                      Tab(text: 'Other'),
                    ],
                  ),
                  Container(
                    height: 200.h, // Adjust height as needed
                    child: TabBarView(
                      children: [
                        Center(child: Text('Male')),
                        Center(child: Text('Female')),
                        Center(child: Text('Other')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            addHeight(30),
            MyButton(label: 'Apply Filter', onPressed: () {}),
            addHeight(20),
          ],
        ),
      ),
    );
  }
}
