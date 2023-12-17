import 'package:ambulance/screen_selection/screen_selection.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class ChatScreenHospital extends StatelessWidget {
  static const String routeName = 'Chat-screen-hospital';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.redColor,
        title: Text('Chat'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(ScreenSelection.routeName);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: MyTheme.whiteColor,
    );
  }
}
