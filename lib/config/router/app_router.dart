import 'package:flutter/material.dart';
import 'package:mobile_dev_project/features/admin/screens/admin_home_screen.dart';
import 'package:mobile_dev_project/features/admin/screens/admin_screen.dart';
import 'package:mobile_dev_project/features/admin/screens/all_report_screen.dart';
import 'package:mobile_dev_project/features/admin/screens/employee_attendance_screen.dart';
import 'package:mobile_dev_project/features/admin/screens/list_of_all_employees_screen.dart';
import 'package:mobile_dev_project/features/admin/screens/report_screen.dart';
import 'package:mobile_dev_project/features/admin/screens/single_employee_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/admin_login_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/admin_sign_up_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/employee_login_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/employee_sign_up_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/forgot_password_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/otp_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/reset_password_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/verification_success_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/welcome_screen.dart';
import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.adminSignUp:
        return MaterialPageRoute(
          builder: (_) => const AdminSignUp(),
        );
      case Routes.adminLogin:
        return MaterialPageRoute(
          builder: (_) => const AdminLoginScreen(),
        );
      case Routes.employeeSignUp:
        return MaterialPageRoute(
          builder: (_) => const EmployeeSignUpScreen(),
        );
      case Routes.employeeLogin:
        return MaterialPageRoute(
          builder: (_) => const EmployeeLoginScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      case Routes.verificationSuccessful:
        return MaterialPageRoute(
          builder: (_) => const VerificationSuccessScreen(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.admin:
        return MaterialPageRoute(
          builder: (_) => const AdminScreen(),
        );
      case Routes.adminHome:
        return MaterialPageRoute(
          builder: (_) => const AdminHomeScreen(),
        );
      case Routes.employeeAttendance:
        return MaterialPageRoute(
          builder: (_) => const EmployeeAttendanceScreen(),
        );
      case Routes.allEmployees:
        return MaterialPageRoute(
          builder: (_) => const AllOfEmployeeScreen(),
        );
      case Routes.singleEmployees:
        return MaterialPageRoute(
          builder: (_) => const SingleEmployeeScreen(),
        );
      case Routes.reports:
        return MaterialPageRoute(
          builder: (_) => const ReportScreen(),
        );
      case Routes.allReports:
        return MaterialPageRoute(
          builder: (_) => const AllReportScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SizedBox(),
        );
    }
  }
}
