import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/admin/screens/admin_home_screen.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const AdminHomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.pink,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.primary,
        indicatorColor: AppColors.lightBlue,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 62.h,
        elevation: 0,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Image.asset('assets/images/home_button.png'),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Image.asset('assets/images/check_in_button.png'),
            label: 'Flights',
          ),
          NavigationDestination(
            icon: Image.asset('assets/images/leave_button.png'),
            label: 'Bookings',
          ),
          NavigationDestination(
            icon: Image.asset('assets/images/report_button.png'),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: Image.asset('assets/images/profile_button.png'),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
