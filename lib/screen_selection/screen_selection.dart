import 'package:ambulance/screen_selection/custom_buttons.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class ScreenSelection extends StatelessWidget {
  static const String routeName = 'Screen-selection';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //     onPressed: () {
          //       Navigator.of(context).pop(ScreenSelection.routeName);
          //     },
          //     icon: Icon(Icons.arrow_back, color: MyTheme.whiteColor)),
          title: Text('Choose your Status',
              style: TextStyle(
                  color: MyTheme.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22)),
          backgroundColor: MyTheme.redColor,
          centerTitle: true),
      backgroundColor: MyTheme.redColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.25),
          Center(child: CustomButtons(text: 'Hospital', index: 1)),
          Center(child: CustomButtons(text: 'Observer', index: 2)),
          Center(child: CustomButtons(text: 'Patient', index: 0)),
        ],
      ),
    );
  }
}
