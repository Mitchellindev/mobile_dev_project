import 'package:flutter/material.dart';
import 'package:mobile_dev_project/features/auth/screens/admin_login_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/admin_sign_up_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/employee_login_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/employee_sign_up_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/forgot_password_screen.dart';
import 'package:mobile_dev_project/features/auth/screens/otp_screen.dart';
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
      default:
        return MaterialPageRoute(
          builder: (_) => const SizedBox(),
        );
    }
  }
}
