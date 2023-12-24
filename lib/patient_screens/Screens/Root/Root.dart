import 'dart:async';

import 'package:ambulance/healthconnectmethodes.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  static const String routeName = 'Root';

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 30), (timer) {
      fetchData(() {
        print('patient is fainting');
        timer.cancel();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.whiteColor,
      appBar: AppBar(
        title: Text("Ambulance"),
        centerTitle: true,
        backgroundColor: Color(0xFFa00c0e),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // fetchData();
                },
                child: CircleAvatar(
                  backgroundColor: Color(0xFFa00c0e),
                  radius: 65,
                  backgroundImage:
                      AssetImage('assets/images/ambulance_icon.png'),
                ),
              ),
              Text(
                'click for Ambulance',
                style: TextStyle(
                    fontSize: 40.0,
                    color: MyTheme.redColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
