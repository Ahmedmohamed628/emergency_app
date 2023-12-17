import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreenObserver extends StatelessWidget {
  static const String routeName = 'Home-screen-observer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Observer'),
        centerTitle: true,
        backgroundColor: MyTheme.redColor,
      ),
      backgroundColor: MyTheme.whiteColor,
    );
  }
}
