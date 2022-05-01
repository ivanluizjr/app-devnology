import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bloc/router_bloc.dart';
import '../controllers/bloc/router_event.dart';
import '../controllers/bloc/router_state.dart';
import '../utils/constants/colors.dart';
import '../views/home_page_view.dart';
import 'transition_widget.dart';

class PrincipalPageImplementationWidget extends StatefulWidget {
  const PrincipalPageImplementationWidget({Key? key}) : super(key: key);

  @override
  State<PrincipalPageImplementationWidget> createState() =>
      _PrincipalPageImplementationWidgetState();
}

class _PrincipalPageImplementationWidgetState
    extends State<PrincipalPageImplementationWidget> {
  final RouterBloc routerBloc = RouterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RouterBloc, RouterState>(
      bloc: routerBloc,
      listener: (context, state) {
        if (state is HomePageState) {
          Navigator.of(context).push(
            TransitionWidget(
              page: const HomePageView(),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kColorSplashAppBarMenus,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: IconButton(
                  onPressed: () => routerBloc.add(HomePageEvent()),
                  icon: Image.asset('assets/images/logo_devnology.png'),
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}
