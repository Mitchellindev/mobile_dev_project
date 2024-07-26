import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/config/router/routes.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/auth/widgets/button_widget.dart';
import 'package:mobile_dev_project/features/auth/widgets/password_textfield_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                'Enter New Password',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Your new password must be different from your old password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 32.h),
              PasswordTextFieldWidget(
                controller: TextEditingController(),
                obscureText: true,
                label: 'New Password',
                passwordLengthText: 'Enter at least 8 characters',
              ),
              SizedBox(height: 12.h),
              PasswordTextFieldWidget(
                controller: TextEditingController(),
                obscureText: true,
                label: 'Confirm Password',
                passwordLengthText: 'Enter at least 8 characters',
              ),
              SizedBox(height: 32.h),
              MyButton(
                label: 'Reset Password',
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.verificationSuccessful);
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
