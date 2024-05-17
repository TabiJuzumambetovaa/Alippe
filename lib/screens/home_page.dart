import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alippe_pro/screens/first_screen.dart';
import 'package:flutter_alippe_pro/screens/info_screen.dart';

import 'theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyExampleState createState() => _MyExampleState();
}

class _MyExampleState extends State<HomePage> {
  int _selectedIndex = 0; //default index

  final List<Widget> _widgetOptions = [
    const InfoScreen(),
    const FirstScreen(),
    const FirstScreen(),
    const FirstScreen(),
    const FirstScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor:AppColors.strongBlue,
        unSelectedColor: AppColors.blue,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.top,
        // gradient: LinearGradient(
        //   colors: kGradients,
        // ),

        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
        ],
      ),
    );
  }
}
