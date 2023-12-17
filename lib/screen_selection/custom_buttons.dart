import 'package:ambulance/hospital_screens/screen_hospital_registeration.dart';
import 'package:ambulance/observer_screens/screen_observer_registeration.dart';
import 'package:ambulance/patient_screens/screen_patient_registeration.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  String text;
  int index;
  List<String> screens = [
    ScreenPatientRegisteration.routeName,
    ScreenHospitalRegisteration.routeName,
    ScreenObserverRegisteration.routeName
  ];

  CustomButtons({required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: MyTheme.whiteColor,
              shape: StadiumBorder(),
              fixedSize: Size(300, 50)),
          onPressed: () {
            // navigation to the screen of the patient or doctor or observer
            // لو عايز اضغط ع الزرار المعين يوديني ع ال homescreen بتاعته؟؟
            Navigator.of(context).pushNamed(screens[index]);
          },
          child: Text(
            text,
            style: TextStyle(
                color: MyTheme.redColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
    );
  }
}
