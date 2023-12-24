import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class ChatScreenPatient extends StatelessWidget {
  static const String routeName = 'Chat-screen-patient';

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
