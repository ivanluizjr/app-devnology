import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';

class OrderCheckoutWidget extends StatelessWidget {
  const OrderCheckoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: kColorSplashAppBarMenus,
      ),
      child: const Icon(
        Icons.check,
        color: kColorCheckOrder,
        size: 80,
      ),
    );
  }
}
