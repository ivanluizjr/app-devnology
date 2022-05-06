import 'package:app_devnology/src/presentation/utils/constants/text_constants.dart';
import 'package:app_devnology/src/presentation/widgets/app_bar_product_widget.dart';
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
            Row(children: const [
              kTextoOrderPlaced,
            ]),
          ],
        ),
      ),
    );
  }
}
