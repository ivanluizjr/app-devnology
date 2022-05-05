import 'package:app_devnology/src/presentation/views/cart_page_view.dart';
import 'package:app_devnology/src/presentation/widgets/categories_scroller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bloc/router_bloc.dart';

import '../controllers/bloc/router_event.dart';
import '../controllers/bloc/router_state.dart';
import '../utils/constants/colors_constants.dart';
import '../utils/constants/text_constants.dart';
import '../views/home_page_view.dart';
import '../views/product_page_view.dart';
import 'app_bar_home_widget.dart';
import 'transition_widget.dart';

class HomePageImplementationWidget extends StatefulWidget {
  const HomePageImplementationWidget({Key? key}) : super(key: key);

  @override
  State<HomePageImplementationWidget> createState() =>
      _HomePageImplementationWidgetState();
}

class _HomePageImplementationWidgetState
    extends State<HomePageImplementationWidget> {
  final RouterBloc routerBloc = RouterBloc();
  int _pageIndex = 0;

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  final _pageList = [
    HomePageEvent(),
    NullPageEvent(),
    CartPageEvent(),
    NullPageEvent(),
    ProductPageEvent(),
  ];

  _onTap() {
    routerBloc.add(_pageList[_pageIndex]);
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
        } else if (state is NullPageState) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const HomePageView()),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
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
          backgroundColor: kColorBackgroundHomePage,
          appBar: const AppBarHomeWidget(),
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  children: const [
                    kTextCategories,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Image.asset(
                        'assets/icons/icon_apparel.png',
                        height: 70,
                      ),
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      splashColor: kColorSplashAppBarMenus,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      child: Image.asset(
                        'assets/icons/icon_beauty.png',
                        height: 70,
                      ),
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      splashColor: kColorSplashAppBarMenus,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      child: Image.asset(
                        'assets/icons/icon_shoes.png',
                        height: 70,
                      ),
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      splashColor: kColorSplashAppBarMenus,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      child: Image.asset(
                        'assets/icons/icon_see_all.png',
                        height: 70,
                      ),
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      splashColor: kColorSplashAppBarMenus,
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  kTextoApparel,
                  SizedBox(
                    width: 35,
                  ),
                  kTextoBeauty,
                  SizedBox(
                    width: 40,
                  ),
                  kTextoShoes,
                  SizedBox(
                    width: 45,
                  ),
                  kTextoSeeAll,
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  children: const [
                    kTextLatest,
                  ],
                ),
              ),
              const SingleChildScrollView(
                child: CategoriesScrollerWidget(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      splashColor: kColorSplashAppBarMenus,
                      child: Container(
                        height: 150,
                        width: 116,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/lenovo_home_01.png'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [kTextoLenovoHome01],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: const [kTextoLenovoHome01Valor],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        if (state is PrincipalPageState ||
                            state is CartPageState) {
                          Navigator.of(context).push(
                            TransitionWidget(
                              page: const ProductPageView(),
                            ),
                          );
                        } else if (state is HomePageState) {
                          Navigator.of(context).push(
                            TransitionWidget(
                              page: const ProductPageView(),
                            ),
                          );
                          _onTap();
                        }
                      },
                      borderRadius: BorderRadius.circular(10),
                      splashColor: kColorSplashAppBarMenus,
                      child: Container(
                        height: 150,
                        width: 116,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/lenovo_home_02.png'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [kTextoLenovoHome02],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: const [kTextoLenovoHome02Valor],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      splashColor: kColorSplashAppBarMenus,
                      child: Container(
                        height: 150,
                        width: 116,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 21),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/lenovo_home_03.png',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [kTextoLenovoHome03],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: const [kTextoLenovoHome03Valor],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
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
            currentIndex: _pageIndex,
            unselectedFontSize: 15,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.amber,
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
