import 'package:app_devnology/src/presentation/controllers/bloc/router_bloc.dart';
import 'package:app_devnology/src/presentation/widgets/home_page_implementation_widget.dart';

import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final RouterBloc routerBloc = RouterBloc();

  @override
  Widget build(BuildContext context) {
    return const HomePageImplementationWidget();
  }
}
