import 'package:ambulance/patient_screens/Screens/Chat/Chat.dart';
import 'package:ambulance/patient_screens/Screens/Hisorty/History.dart';
import 'package:ambulance/patient_screens/Screens/Medications/Medications.dart';
import 'package:ambulance/patient_screens/Screens/Root/Root.dart';
import 'package:ambulance/patient_screens/Screens/Settings/Settings.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreenPatient extends StatefulWidget {
  static const String routeName = 'Home-screen-patient';

  @override
  State<HomeScreenPatient> createState() => _HomeScreenPatientState();
}

class _HomeScreenPatientState extends State<HomeScreenPatient> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: MyTheme.redColor,
        ),
        child: BottomAppBar(
          color: MyTheme.redColor,
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            selectedItemColor: MyTheme.whiteColor,
            unselectedItemColor: MyTheme.grayColor,
            onTap: (index) {
              selectedIndex = index;

              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.medication_liquid), label: 'Medication'),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        ),
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs = [
    ChatScreen(),
    MedicationScreen(),
    RootScreen(),
    HistoryScreen(),
    SettingsScreen()
  ];
}