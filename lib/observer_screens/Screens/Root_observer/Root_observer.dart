import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../screen_selection/screen_selection.dart';

class RootScreenObserver extends StatefulWidget {
  static const String routeName = 'Root';

  @override
  State<RootScreenObserver> createState() => _RootScreenObserverState();
}

class _RootScreenObserverState extends State<RootScreenObserver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Home", style: TextStyle(color: MyTheme.whiteColor)),
          centerTitle: true,
          backgroundColor: MyTheme.redColor,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop(ScreenSelection.routeName);
              },
              icon: Icon(Icons.arrow_back))),
      backgroundColor: MyTheme.whiteColor,
    );
  }
}
