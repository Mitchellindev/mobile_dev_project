import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/config/router/routes.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/auth/widgets/button_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/welcome_image.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              bottom: 60.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/management.png'),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Celestial',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w900,
                            color: AppColors.lightPurple,
                          ),
                        ),
                        Text(
                          'Tracker',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w900,
                            color: AppColors.lightPurple,
                          ),
                        ),
                        Text(
                          'Manage with ease',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40.h),
                Text(
                  'Quickly',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'track your attendance.',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 44.h),
                Container(
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(0.08),
                  ),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 8.w,
                        sigmaY: 8.h,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 20.h,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                'Welcome to Celestial Tracker',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              MyButton(
                                label: 'I am an Employee',
                                backgroundColor: AppColors.primary,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Routes.employeeLogin);
                                },
                                textColor: AppColors.white,
                                borderColor: AppColors.primary,
                              ),
                              SizedBox(height: 16.h),
                              MyButton(
                                label: 'I am an Admin',
                                backgroundColor: AppColors.transparent,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Routes.adminLogin);
                                },
                                textColor: AppColors.white,
                                borderColor: AppColors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
