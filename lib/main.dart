import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meet_by_vesti/screens/auth/auth.dart';
import 'package:meet_by_vesti/screens/change_password.dart';
import 'package:meet_by_vesti/screens/forgot_password.dart';
import 'package:meet_by_vesti/screens/onboarding/onboarding_2.dart';
import 'package:meet_by_vesti/screens/onboarding/onboarding_screen.dart';
import 'package:meet_by_vesti/screens/splash_screen.dart';
import 'package:meet_by_vesti/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) =>
          OnBoardingScreen(),
    ),
    GoRoute(
      path: '/onboarding_2',
      builder: (BuildContext context, GoRouterState state) =>
          FinalOnboardingScreen(),
    ),
    GoRoute(
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) => AuthScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (BuildContext context, GoRouterState state) =>
          ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/change-password',
      builder: (BuildContext context, GoRouterState state) =>
          ChangePasswordScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) =>
          MyBottomNavigationBar(),
    ),
    // GoRoute(
    //   path: '/profile',
    //   builder: (BuildContext context, GoRouterState state) => ProfileScreen(),
    // ),
    // GoRoute(
    //   path: '/favorites',
    //   builder: (BuildContext context, GoRouterState state) => FavoritesScreen(),
    // ),
    // GoRoute(
    //   path: '/search',
    //   builder: (BuildContext context, GoRouterState state) => SearchScreen(),
    // ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: _router,
          title: 'Meet by Vesti',
          theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
        );
      },
    );
  }
}
