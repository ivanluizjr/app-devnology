import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';

class AppBarProductWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarProductWidget({Key? key, this.height = kToolbarHeight})
      : super(key: key);
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kColorSplashAppBarMenus,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.shopping_cart_outlined),
        ),
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo_devnology.png',
            height: 200,
            width: 200,
          ),
        ],
      ),
      // title: Stack(
      //   children: [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Image.asset(
      //           'assets/images/logo_devnology.png',
      //           height: 28,
      //           fit: BoxFit.cover,
      //         ),
      //       ],
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: const [
      //         Icon(Icons.shopping_cart_outlined),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
