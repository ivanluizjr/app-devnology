import 'package:flutter/material.dart';

import '../views/principal_page_view.dart';

class DevNoLogyWidget extends StatelessWidget {
  const DevNoLogyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PrincipalPageView(),
    );
  }
}
