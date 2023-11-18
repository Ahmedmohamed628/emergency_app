import 'package:ambulance/Screens/Chat/Chat.dart';
import 'package:ambulance/Screens/Hisorty/History.dart';
import 'package:ambulance/Screens/Medications/Medications.dart';
import 'package:ambulance/Screens/Root/Root.dart';
import 'package:ambulance/Screens/Settings/Settings.dart';
import 'package:ambulance/homeScreen.dart';
import 'package:ambulance/login/login_screen.dart';
import 'package:ambulance/register/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RegisterScreen.routeName,
      routes: {
        RegisterScreen.routeName: (context) => RegisterScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RootScreen.routeName: (context) => RootScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
        HistoryScreen.routeName: (context) => HistoryScreen(),
        ChatScreen.routeName: (context) => ChatScreen(),
        MedicationScreen.routeName: (context) => MedicationScreen(),
        HomeScreen.routeName: (context) => HomeScreen()
      },
    );
  }
}
