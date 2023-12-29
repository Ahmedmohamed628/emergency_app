import 'package:ambulance/hospital_screens/Screens_of_hospital/Chat/Chat.dart';
import 'package:ambulance/hospital_screens/Screens_of_hospital/Hisorty/History.dart';
import 'package:ambulance/hospital_screens/Screens_of_hospital/Settings/Settings.dart';
import 'package:ambulance/hospital_screens/Screens_of_hospital/ambulance/ambulance.dart';
import 'package:ambulance/hospital_screens/Screens_of_hospital/root/root.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreenHospital extends StatefulWidget {
  static const String routeName = 'Home-screen-hospital';

  @override
  State<HomeScreenHospital> createState() => _HomeScreenHospitalState();
}

class _HomeScreenHospitalState extends State<HomeScreenHospital> {
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
                  icon: Icon(Icons.medication), label: 'Ambulance'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        ),
      ),
      body: tabsHosbpital[selectedIndex],
    );
  }

  List<Widget> tabsHosbpital = [
    ChatScreenHospital(),
    AmbulanceScreenHospital(),
    RootScreenHospital(),
    HistoryScreenHospital(),
    SettingsScreenHospital()
  ];
}

// import 'package:flutter/material.dart';
//
// class HomeScreenHospital extends StatelessWidget {
// static const String routeName ='Home-screen-hospital';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//
//     );
//   }
// }
