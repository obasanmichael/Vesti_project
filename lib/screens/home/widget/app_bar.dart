import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  Widget addHeight(double height) => SizedBox(height: height.h);
  Widget addWidth(double width) => SizedBox(width: width.w);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: Image(
            image: AssetImage('assets/images/profile.png'),
            fit: BoxFit.cover,
          ),
          radius: 25,
        ),
        addWidth(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location,',
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff838383)),
            ),
            addHeight(2),
            Text(
              'Los Angeles, CA',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.sp),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {},
          icon: Image(
            image: AssetImage('assets/images/notification_2.png'),
            width: 70.w,
          ),
        ),
      ],
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const MyAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
//         child: AppBar(
//           leading: CircleAvatar(
//             radius: 30,
//             child: Image(
//               image: AssetImage('assets/images/profile.png'),
//               width: 50,
//             ),
//           ),
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Location',
//                 style: TextStyle(
//                   fontSize: 13.sp,
//                   color: Color(0xff838383),
//                   fontWeight: FontWeight.w300,
//                 ),
//               ),
//               Text(
//                 'Los Angeles, CA',
//                 style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w800),
//               )
//             ],
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: ImageIcon(AssetImage('assets/images/notification_2.png')),
//               onPressed: () {},
//             ),
//           ],
//           elevation: 0,
//           scrolledUnderElevation: 0,
//         ),
//       ),
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(80.h);
// }
