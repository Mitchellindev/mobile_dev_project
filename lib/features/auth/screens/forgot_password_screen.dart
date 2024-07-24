import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/config/router/routes.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/auth/widgets/button_widget.dart';
import 'package:mobile_dev_project/features/auth/widgets/text_field_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
          child: Column(
            children: [
              Text(
                'Add email address',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 12.h),
              Text(
                'Enter the email address associated with your employee account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 32.h),
              MyTextField(
                controller: TextEditingController(),
                obscureText: false,
                label: 'Email',
              ),
              SizedBox(height: 32.h),
              Text(
                ' Please check your inox for we will send a verification code to your email address.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightGrey,
                ),
              ),
              SizedBox(height: 32.h),
              MyButton(
                label: 'Continue',
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.otpVerification);
                },
                textColor: AppColors.white,
                borderColor: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
