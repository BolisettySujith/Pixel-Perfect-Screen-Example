import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, child) => MaterialApp(
        title: 'Demo Pixel Perfect Design',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(title: 'Demo Pixel Perfect Design'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  final purpleColor = const Color(0xff6688FF);
  final darkTextColor = const Color(0xff1F1A3D);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xffF5F6FA);
  final borderColor = const Color(0xffD9D9D9);


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 56.h,
                ),
                Text(
                  'Sign Up to NaviG',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: darkTextColor
                  ),
                ),
                SizedBox(height: 7.h,),
                Wrap(
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: lightTextColor
                      ),
                    ),
                    SizedBox(width: 6.w,),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: purpleColor
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h,),
                getTextField("username"),
                SizedBox(height: 24.h,),
                getTextField("email id"),
                SizedBox(height: 24.h,),
                getTextField("password"),
                SizedBox(height: 24.h,),
                getTextField("confirm password"),
                SizedBox(height: 24.h,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.h)),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp
                        )
                      )
                    ),
                    onPressed: (){

                    },
                    child: const Text("Create Account")
                  ),
                ),
                SizedBox(height: 24.h,),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    SizedBox(width: 15.w,),
                    Text(
                        "or sign up via",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: lightTextColor
                      ),
                    ),
                    SizedBox(width: 15.w,),
                    const Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 24.h,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(color: borderColor)),
                          foregroundColor: MaterialStateProperty.all(darkTextColor),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.h)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp
                              )
                          )
                      ),
                      onPressed: (){},
                      child: const Text(
                          "Google",
                      )
                  ),
                ),
                SizedBox(height: 24.h,),
                Wrap(
                  children: [
                    Text(
                      'By signing up the NaviG you agree to our',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: lightTextColor
                      ),
                    ),
                    Text(
                      'terms and conditions',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: purpleColor
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 56.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget getTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.transparent, width: 0)
          ),
          fillColor: textFieldColor,
          filled: true,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 15.w),
          hintStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400
          )

      ),
    );
  }
}
