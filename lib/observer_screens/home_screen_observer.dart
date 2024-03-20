import 'package:ambulance/observer_screens/Screens/Chat_observer/Chat_observer.dart';
import 'package:ambulance/observer_screens/Screens/Settings_observer/Settings_observer.dart';
import 'package:ambulance/patient_screens/Screens/Medications/Medications.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

import '../hospital_screens/Screens_of_hospital/deaf/deaf.dart';
import 'Screens/Root_observer/Root_observer.dart';

class HomeScreenObserver extends StatefulWidget {
  static const String routeName = 'Home-screen-observer';

  @override
  State<HomeScreenObserver> createState() => _HomeScreenObserverState();
}

class _HomeScreenObserverState extends State<HomeScreenObserver> {
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat, size: 22), label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.medication_liquid, size: 22),
                  label: 'Medication'),
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 22),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.volume_off, size: 22), label: 'Deaf'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings, size: 22), label: 'Settings'),
            ],
          ),
        ),
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs = [
    ChatScreenObserver(),
    MedicationScreen(),
    RootScreenObserver(),
    DeafScreenHospital(),
    SettingsScreenObserver()
  ];
}
