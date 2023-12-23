import 'package:ambulance/authentication/component/custom_text_form_field.dart';
import 'package:ambulance/patient_screens/homeScreen_patient.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';

import '../screen_selection/screen_selection.dart';
import '../theme/theme.dart';

class ScreenPatientRegisteration extends StatelessWidget {
  static const String routeName = 'screen-patient';
  var chronicDiseases = TextEditingController();
  var height = TextEditingController();
  var weight = TextEditingController();
  var age = TextEditingController();
  var gender = TextEditingController();
  var id = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.whiteColor,
      appBar: AppBar(
          backgroundColor: MyTheme.redColor,
          title: Text('Patient'),
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
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Lottie.asset('assets/images/patient_lottie.json')),
              //chronic diseases
              CustomTextFormField(
                label: 'Chronic Diseases', controller: chronicDiseases,
                // mlhash suffixation icon???????????????????????????
                // ezay a5ly el diseases optional????????????????????????????
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
              //height
              CustomTextFormField(
                label: 'Height', controller: height,
                prefixIcon: Icon(Icons.height, color: MyTheme.redColor),
                // ezay a5ly el diseases optional????????????????????????????
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter your height';
                  }
                  return null;
                },
              ),
              //weight
              CustomTextFormField(
                label: 'Weight', controller: weight,
                // mlhash suffixation icon??????????????????????????
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter your weight';
                  }
                  return null;
                },
              ),
              //age
              CustomTextFormField(
                label: 'Age', controller: age,
                // mlhash suffixation icon??????????????????????????
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
              ),
              //gender
              CustomTextFormField(
                label: 'Gender', controller: gender,
                // mlhash suffixation icon??????????????????????????
                prefixIcon: Icon(Icons.perm_identity, color: MyTheme.redColor),
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
              ),
              //id
              CustomTextFormField(
                label: 'National Id',
                controller: id,
                prefixIcon: Icon(Icons.perm_identity, color: MyTheme.redColor),
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter your national id';
                  }
                  if (text.length < 14) {
                    return 'Enter a valid national id';
                  }
                  return null;
                },
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // navigate to home screen patient
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreenPatient.routeName);
                    authorize();

                    // Navigator.of(context).pushReplacementNamed(LoginScreen.routeName, arguments: 0);
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

Future authorize() async {
  await Permission.activityRecognition.request();
  await Permission.location.request();
}
