import 'package:app_devnology/src/presentation/utils/constants/colors_constants.dart';
import 'package:app_devnology/src/presentation/utils/constants/text_constants.dart';
import 'package:app_devnology/src/presentation/widgets/app_bar_product_widget.dart';
import 'package:app_devnology/src/presentation/widgets/custom_buttons_end.dart';
import 'package:app_devnology/src/presentation/widgets/order_checkout_widget.dart';
import 'package:app_devnology/src/presentation/widgets/order_page_implementation_widget.dart';
import 'package:flutter/material.dart';

class OrderPageView extends StatefulWidget {
  const OrderPageView({Key? key}) : super(key: key);

  @override
  State<OrderPageView> createState() => _OrderPageViewState();
}

class _OrderPageViewState extends State<OrderPageView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarProductWidget(),
      body: OrderPageImplementationWidget(),
    );
  }
}
