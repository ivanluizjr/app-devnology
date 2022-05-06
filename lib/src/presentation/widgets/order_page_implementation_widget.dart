import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';
import '../utils/constants/text_constants.dart';
import 'custom_buttons_end.dart';
import 'order_checkout_widget.dart';

class OrderPageImplementationWidget extends StatelessWidget {
  const OrderPageImplementationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: OrderCheckoutWidget(),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              kTextoOrderPlaced,
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              kTextoOrderPlaced01,
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtomEnd(
                onTap: () {},
                text: kTextoOrderButtom,
                color: kColorSplashAppBarMenus,
                icon: const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                  size: 40,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
