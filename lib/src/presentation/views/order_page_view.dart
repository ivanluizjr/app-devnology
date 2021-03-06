import 'package:app_devnology/src/presentation/utils/constants/colors_constants.dart';
import 'package:app_devnology/src/presentation/utils/constants/text_constants.dart';
import 'package:app_devnology/src/presentation/widgets/app_bar_product_widget.dart';
import 'package:app_devnology/src/presentation/widgets/custom_buttons_end.dart';
import 'package:app_devnology/src/presentation/widgets/order_checkout_widget.dart';
import 'package:flutter/material.dart';

class OrderPageView extends StatefulWidget {
  const OrderPageView({Key? key}) : super(key: key);

  @override
  State<OrderPageView> createState() => _OrderPageViewState();
}

class _OrderPageViewState extends State<OrderPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarProductWidget(),
      body: Padding(
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
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtomEnd(
                  onTap: () {},
                  text: kTextoOrderBottom,
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
      ),
    );
  }
}
