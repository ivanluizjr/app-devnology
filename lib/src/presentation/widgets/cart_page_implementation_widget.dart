import 'package:app_devnology/src/presentation/controllers/bloc/router_bloc.dart';
import 'package:app_devnology/src/presentation/controllers/bloc/router_state.dart';
import 'package:app_devnology/src/presentation/utils/constants/text_constants.dart';
import 'package:app_devnology/src/presentation/widgets/app_bar_home_widget.dart';
import 'package:app_devnology/src/presentation/widgets/bottom_navigaton_bar_widget.dart';
import 'package:app_devnology/src/presentation/widgets/custom_buttons_end.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bloc/router_event.dart';
import '../utils/constants/colors_constants.dart';
import '../views/cart_page_view.dart';
import '../views/home_page_view.dart';
import '../views/order_page_view.dart';
import 'transition_widget.dart';

class CartPageImplementationWidget extends StatefulWidget {
  const CartPageImplementationWidget({Key? key}) : super(key: key);

  @override
  State<CartPageImplementationWidget> createState() =>
      _CartPageImplementationWidgetState();
}

class _CartPageImplementationWidgetState
    extends State<CartPageImplementationWidget> {
  final RouterBloc routerBloc = RouterBloc();
  int _pageIndex = 0;

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  final _pageList = [
    HomePageEvent(),
    NullPageEvent(),
    CartPageEvent(),
    NullPageEvent(),
    ProductPageEvent(),
    OrderPageEvent(),
  ];

  _onTap() {
    routerBloc.add(_pageList[_pageIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RouterBloc, RouterState>(
      bloc: routerBloc,
      listener: (context, state) {
        if (state is PrincipalPageState) {
          Navigator.of(context).push(
            TransitionWidget(
              page: const HomePageView(),
            ),
          );
        } else if (state is NullPageState) {
          Navigator.of(context).push(TransitionWidget(
            page: const CartPageView(),
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const AppBarHomeWidget(),
          key: _drawerKey,
          drawer: Drawer(
            backgroundColor: kColorSplashAppBarMenus,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Clique para fechar'),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: const [
                    kTextoCart,
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/lenovo_cart_01.png'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [kTextoCartLenovo01],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 110,
                      ),
                      child: SizedBox(
                        height: 140,
                        child: Row(
                          children: const [kTextoCartPreco01],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/lenovo_cart_02.png'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [kTextoCartLenovo01],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 110,
                      ),
                      child: SizedBox(
                        height: 140,
                        child: Row(
                          children: const [kTextoCartPreco02],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 160,
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
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Total',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '\$ 2,237.79',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              CustomButtomEnd(
                                  color: kColorSplashAppBarMenus,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  text: kTextoCheckout,
                                  onTap: () {
                                    if (state is CartPageState ||
                                        state is PrincipalPageState) {
                                      Navigator.of(context).push(
                                        TransitionWidget(
                                          page: OrderPageView(),
                                        ),
                                      );
                                    }
                                  }),
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
          bottomNavigationBar: BottomNavigationBarWidget(
            currentIndex: _pageIndex,
            onTap: (index) {
              setState(
                () {
                  _pageIndex = index;
                },
              );
              index == 4 ? _drawerKey.currentState?.openDrawer() : _onTap();
            },
          ),
        );
      },
    );
  }
}
