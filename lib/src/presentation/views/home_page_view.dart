import 'package:app_devnology/src/presentation/controllers/bloc/router_bloc.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _PrincipalPageViewState();
}

class _PrincipalPageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return TesteTeste();
    // return MaterialApp(
    //   home: BlocProvider(
    //     create: (context) => RouterBloc(),
    //     child: TesteTeste(),
    //   ),
    // );
  }
}

class TesteTeste extends StatelessWidget {
  TesteTeste({Key? key}) : super(key: key);
  final RouterBloc routerBloc = RouterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
    // return BlocConsumer<RouterBloc, RouterState>(
    //   bloc: routerBloc,
    //   listener: (context, state) {
    //     print(state);
    //     if (state is PrincipalPageState) {
    //       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //         return const PrincipalPageView();
    //       }));
    //     }
    //   },
    //   builder: (context, state) {
    //     return Scaffold(
    //       body: Center(
    //         child: ElevatedButton(
    //           child: const Text('home'),
    //           onPressed: () {
    //             routerBloc.navigateToPrinciapal();
    //           },
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
