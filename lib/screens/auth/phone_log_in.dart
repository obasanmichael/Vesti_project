import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_by_vesti/widgets/button.dart';

class PhoneLogIn extends StatefulWidget {
  const PhoneLogIn({super.key});

  @override
  State<PhoneLogIn> createState() => _PhoneLogInState();
}

class _PhoneLogInState extends State<PhoneLogIn> {
  @override
  Widget build(BuildContext context) {
    Widget addHeight(double height) => SizedBox(height: height.h);
    Widget addWidth(double width) => SizedBox(width: width.h);

    String _selectedCountryCode = '+33';
    final TextEditingController _phoneNumberController =
        TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              context.go('/onboarding_2');
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              addHeight(64),
              Card(
                elevation: 0,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My number is',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 24.sp),
                    ),
                    addHeight(19),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: CountryCodePicker(
                            initialSelection: 'FR',
                            showFlag: false,
                            showFlagDialog: true,
                          ),
                        ),
                        addWidth(10),
                        Expanded(
                          child: TextField(
                            controller: _phoneNumberController,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              // labelText: 'Phone Number',
                              // labelStyle: TextStyle(color: Colors.black),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            onChanged: (value) {
                              print(
                                  'Phone Number: $_selectedCountryCode$value');
                            },
                          ),
                        ),
                      ],
                    ),
                    // IntlPhoneField(
                    //   keyboardType: TextInputType.phone,
                    //   decoration: InputDecoration(
                    //     labelText: 'Phone Number',
                    //   ),
                    //   initialCountryCode: 'FR',
                    //   onChanged: (phone) {
                    //     print(phone.completeNumber);
                    //   },
                    // ),

                    addHeight(32),
                    SizedBox(
                      width: 372.w,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'We will send a text with a verification code. Message and data rates may apply. ',
                              style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 14.sp,
                                fontFamily: 'Söhne',
                                fontWeight: FontWeight.w300,
                                height: 1.6, // Adjusted height for readability
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Learn what happens when your number changes.',
                              style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 14.sp,
                                fontFamily: 'Söhne',
                                fontWeight: FontWeight.w500,
                                // decoration: TextDecoration.underline,
                                height: 1.6, // Adjusted height for readability
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    addHeight(37),
                    MyButton(
                      label: 'Continue',
                      onPressed: () {
                        context.go('/phone_code');
                      },
                    )
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
