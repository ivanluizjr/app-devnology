import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kColorSplashAppBarMenus,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_rounded,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart_outlined,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_outlined,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
          ),
          label: 'More',
        ),
      ],
      currentIndex: widget.currentIndex,
      unselectedFontSize: 15,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.amber,
      onTap: widget.onTap,
    );
  }
}
