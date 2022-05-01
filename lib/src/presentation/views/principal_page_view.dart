import 'package:app_devnology/src/presentation/controllers/bloc/router_bloc.dart';
import 'package:app_devnology/src/presentation/widgets/principal_page_implementation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrincipalPageView extends StatefulWidget {
  const PrincipalPageView({Key? key}) : super(key: key);

  @override
  State<PrincipalPageView> createState() => _PrincipalPageViewState();
}

class _PrincipalPageViewState extends State<PrincipalPageView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => RouterBloc(),
        child: const PrincipalPageImplementationWidget(),
      ),
    );
  }
}
