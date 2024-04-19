import 'package:flutter/material.dart';
import 'package:sem2/screen/home_screen.dart';
import 'package:sem2/screen/learned/nested_scroll_view.dart';
import 'package:sem2/screen/learned/nested_scroll_view_screen.dart';
import 'package:sem2/screen/promotion_screen.dart';
import 'package:sem2/screen/tabbar_play.dart';

import 'package:sem2/screen/tabbar_play2.dart';
import 'package:sem2/screen/tabbar_screen_template.dart';

class BottomTabbarScreen extends StatefulWidget {
  const BottomTabbarScreen({super.key});

  @override
  State<BottomTabbarScreen> createState() => _MainPageState();
}

class _MainPageState extends State<BottomTabbarScreen> {
  int tabIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const PromotionScreen(),
    const TabBarPlay(),
    // const TabBarPlay2(),
    // const TabBarScreenTemplate()
    const NestedScrollViewScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (index) {
          setState(() {
            tabIndex = index;
          });
        },
        selectedItemColor: Colors.deepPurple[400],
        unselectedItemColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notff',
          ),
        ],
      ),
    );
  }
}
