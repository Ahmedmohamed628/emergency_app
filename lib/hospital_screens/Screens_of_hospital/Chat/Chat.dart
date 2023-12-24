import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class ChatScreenHospital extends StatelessWidget {
  static const String routeName = 'Chat-screen-hospital';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.redColor,
        title: Text('Chat', style: TextStyle(color: MyTheme.whiteColor)),
        centerTitle: true,
      ),
      backgroundColor: MyTheme.whiteColor,
    );
  }
}
