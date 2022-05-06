import 'package:app_devnology/src/presentation/controllers/bloc/router_event.dart';
import 'package:app_devnology/src/presentation/utils/constants/colors_constants.dart';
import 'package:app_devnology/src/presentation/utils/constants/text_constants.dart';
import 'package:app_devnology/src/presentation/widgets/app_bar_product_widget.dart';
import 'package:app_devnology/src/presentation/widgets/custom_buttons_end.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bloc/router_bloc.dart';
import '../controllers/bloc/router_state.dart';
import '../views/cart_page_view.dart';
import '../views/product_page_view.dart';
import 'transition_widget.dart';

class ProductPageImplementationWidget extends StatefulWidget {
  const ProductPageImplementationWidget({Key? key}) : super(key: key);

  @override
  State<ProductPageImplementationWidget> createState() =>
      _PrincipalPageImplementationWidgetState();
}

class _PrincipalPageImplementationWidgetState
    extends State<ProductPageImplementationWidget> {
  final RouterBloc routerBloc = RouterBloc();

  _onTap() {
    routerBloc.add(CartPageEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RouterBloc, RouterState>(
      bloc: routerBloc,
      listener: (context, state) {
        if (state is ProductPageState) {
          Navigator.of(context).push(
            TransitionWidget(
              page: const ProductPageView(),
            ),
          );
        } else if (state is CartPageState) {
          Navigator.of(context).push(
            TransitionWidget(
              page: const CartPageView(),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const AppBarProductWidget(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [kTextoProdutcPage01],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('assets/images/lenovo_product.png')],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [kTextoPrice],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [kTextoProductPageValor],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [kTextoAbout],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [kTextoProductPage02],
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  color: kColorBottomProduct,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              CustomButtomEnd(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: kColorSplashAppBarMenus,
                                    size: 40,
                                  ),
                                  color: Colors.white,
                                  text: kTextoShareThis,
                                  onTap: () {}),
                              const SizedBox(
                                width: 40,
                              ),
                              CustomButtomEnd(
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                color: kColorSplashAppBarMenus,
                                text: kTextoAddCart,
                                onTap: () {
                                  _onTap();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
