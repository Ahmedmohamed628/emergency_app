import 'package:ambulance/hospital_screens/home_screen_hospital.dart';
import 'package:ambulance/screen_selection/screen_selection.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../authentication/component/custom_text_form_field.dart';

class ScreenHospitalRegisteration extends StatelessWidget {
  static const String routeName = 'screen-hospital';
  var phoneNumber = TextEditingController();
  var address = TextEditingController();
  var doctorName = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.whiteColor,
      appBar: AppBar(
          backgroundColor: MyTheme.redColor,
          title: Text('Hospital'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop(ScreenSelection.routeName);
              },
              icon: Icon(Icons.arrow_back))),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Lottie.asset('assets/images/hospital_lottie.json')),
              CustomTextFormField(
                label: 'Phone number',
                controller: phoneNumber,
                prefixIcon: Icon(Icons.phone, color: MyTheme.redColor),
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter a phone number';
                  }
                  if (text.length < 12) {
                    return 'Enter a valid phone number';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                label: 'Doctor Name',
                controller: doctorName,
                prefixIcon: Icon(Icons.drive_file_rename_outline_sharp,
                    color: MyTheme.redColor),
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter a doctor name';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                label: 'Address',
                controller: address,
                suffixIcon: Icon(Icons.home_filled, color: MyTheme.redColor),
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter an address';
                  }
                  // valid address???????????????????????????????????????????
                  if (text.length < 12) {
                    return 'Enter a valid address';
                  }
                  return null;
                },
              ),

              //nfs el moshkela leh el spacer error??????????????????????????????
              // SizedBox(height: MediaQuery.of(context).size.height*0.13),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // navigate to home screen patient
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreenHospital.routeName);
                    // Navigator.of(context).pushReplacementNamed(LoginScreen.routeName, arguments: 1);
                  },
                  child: Text('Done',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyTheme.redColor,
                      padding: EdgeInsets.symmetric(vertical: 10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
