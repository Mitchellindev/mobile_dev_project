import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_dev_project/config/router/app_router.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/auth/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return ScreenUtilInit(
      builder: (BuildContext context, child) {
        return MaterialApp(
          onGenerateRoute: appRouter.onGenerateRoute,
          debugShowCheckedModeBanner: false,
          title: 'Mobile dev project',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
            textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme),
            useMaterial3: true,
          ),
          home: const WelcomeScreen(),
        );
      },
      designSize: const Size(390, 844),
    );
  }
}
