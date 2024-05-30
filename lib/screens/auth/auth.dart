import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_by_vesti/widgets/button.dart';
import 'package:meet_by_vesti/widgets/outlined_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Widget addHeight(double height) => SizedBox(height: height.h);
  Widget addWidth(double width) => SizedBox(width: width.h);
  var _isLogin = true;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Center(
            child: Card(
          elevation: 0,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  Text(
                    _isLogin ? 'Welcome back, Olivia' : 'Register to join us',
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 24.sp),
                  ),
                  addHeight(5),
                  Text(
                    _isLogin
                        ? 'Welcome back! Please enter your details.'
                        : 'Please enter your details',
                    style: TextStyle(color: Color(0xff838383), fontSize: 14.sp),
                  ),
                  addHeight(64),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your Email',
                        labelStyle: TextStyle(color: Color(0xff838383))),
                  ),
                  addHeight(24),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Create Password',
                        labelStyle: TextStyle(color: Color(0xff838383))),
                  ),
                  addHeight(24),
                  if (!_isLogin)
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Confirm Password',
                          labelStyle: TextStyle(color: Color(0xff838383))),
                    ),
                  if (!_isLogin) addHeight(24),
                  _isLogin
                      ? Row(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: isChecked,
                                    activeColor: Color(0xff67A948),
                                    onChanged: (newBool) {
                                      setState(() {
                                        isChecked = newBool;
                                      });
                                    }),
                                addWidth(5),
                                Text('Remember me',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp))
                              ],
                            ),
                            Spacer(),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ))
                          ],
                        )
                      : Row(
                          children: [
                            Checkbox(
                                value: isChecked,
                                activeColor: Color(0xff67A948),
                                onChanged: (newBool) {
                                  setState(() {
                                    isChecked = newBool;
                                  });
                                }),
                            Text('I agree to Terms and conditions')
                          ],
                        ),
                  addHeight(32),
                  MyButton(label: 'Login with Vesti', onPressed: () {}),
                  addHeight(30),
                  const Row(
                    children: [
                      Expanded(
                          child:
                              Divider(thickness: 1, color: Color(0xffD9D9D9))),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          'Or',
                          style: TextStyle(color: Color(0xff838383)),
                        ),
                      ),
                      Expanded(
                          child:
                              Divider(thickness: 1, color: Color(0xffD9D9D9))),
                    ],
                  ),
                  addHeight(30),
                  MyOutlinedButton(label: 'Continue with Google'),
                  addHeight(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _isLogin
                            ? 'Don\'t have an account?'
                            : 'Have an account?',
                        style: TextStyle(
                            color: Color(0xff838383), fontSize: 16.sp),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        },
                        child: Text(
                          _isLogin ? 'Register' : 'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.sp),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
