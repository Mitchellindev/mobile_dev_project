import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/config/router/routes.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/auth/widgets/button_widget.dart';
import 'package:mobile_dev_project/features/auth/widgets/text_field_widget.dart';
import 'package:mobile_dev_project/features/auth/widgets/password_textfield_widget.dart';

class EmployeeSignUpScreen extends StatelessWidget {
  const EmployeeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          'Create Your Account',
          style: TextStyle(
              fontSize: 20.sp,
              color: AppColors.secondary,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                MyTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  label: 'First Name',
                ),
                MyTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  label: 'Last Name',
                ),
                MyTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  label: 'Employee ID',
                ),
                MyTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  label: 'Department',
                ),
                MyTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  label: 'Company Email',
                ),
                PasswordTextFieldWidget(
                  controller: TextEditingController(),
                  obscureText: true,
                  label: 'Password',
                  passwordLengthText: 'Enter at least 8 characters',
                ),
                SizedBox(height: 20.h),
                MyButton(
                  label: 'Sign Up',
                  backgroundColor: AppColors.primary,
                  onPressed: () {},
                  textColor: AppColors.white,
                  borderColor: AppColors.primary,
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.employeeLogin);
                  },
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: AppColors.lightGrey,
                          ),
                        ),
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
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
