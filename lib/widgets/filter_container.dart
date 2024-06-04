import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meet_by_vesti/widgets/button.dart';

class FilterContainer extends StatefulWidget {
  const FilterContainer({super.key});

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
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
                    fontSize: 16.sp,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            addHeight(40),
            Text(
              'Location',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
            addHeight(12),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Los Angeles, California',
                  suffixIcon: SvgPicture.asset('assets/svg/navigation.svg'),
                  suffixIconConstraints:
                      BoxConstraints(maxWidth: 20, maxHeight: 20)),
            ),
            addHeight(48),
            Text(
              'Gender',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: 16.sp,
              ),
            ),
            addHeight(12),
            DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 46.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEDEDED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: Color(0xFF67A948),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      dividerColor: Colors.transparent,
                      indicatorColor: Color(0xff67A948),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: 'Male'),
                        Tab(text: 'Female'),
                        Tab(text: 'Other'),
                      ],
                    ),
                  ),
                  addHeight(32),
                  SizedBox(
                    height: 120.h, // Adjust height as needed
                    child: TabBarView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 16.sp),
                            ),
                            RangeSlider(
                              activeColor: Color(0xff67A948),
                              inactiveColor: Color(0xffE5E7EB),
                              values: _currentRangeValues,
                              min: 0,
                              max: 100,
                              divisions: 100,
                              labels: RangeLabels(
                                _currentRangeValues.start.round().toString(),
                                _currentRangeValues.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues = values;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 16.sp),
                            ),
                            RangeSlider(
                              activeColor: Color(0xff67A948),
                              inactiveColor: Color(0xffE5E7EB),
                              values: _currentRangeValues,
                              min: 0,
                              max: 100,
                              divisions: 100,
                              labels: RangeLabels(
                                _currentRangeValues.start.round().toString(),
                                _currentRangeValues.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues = values;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 16.sp),
                            ),
                            RangeSlider(
                              activeColor: Color(0xff67A948),
                              inactiveColor: Color(0xffE5E7EB),
                              values: _currentRangeValues,
                              min: 0,
                              max: 100,
                              divisions: 100,
                              labels: RangeLabels(
                                _currentRangeValues.start.round().toString(),
                                _currentRangeValues.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues = values;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            addHeight(10),
            MyButton(label: 'Apply Filter', onPressed: () {}),
            addHeight(20),
          ],
        ),
      ),
    );
  }
}
