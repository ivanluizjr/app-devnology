import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';

class AppBarHomeWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHomeWidget({Key? key, this.height = kToolbarHeight})
      : super(key: key);
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kColorSplashAppBarMenus,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/logo_devnology.png',
            height: 28,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 100,
          ),
          const Icon(Icons.chat_bubble_outline),
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.notifications_none_outlined),
        ],
      ),
    );
  }
}
