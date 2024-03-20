import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../authentication/component/custom_text_form_field.dart';
import 'home_screen_observer.dart';

class ScreenObserverRegisteration extends StatelessWidget {
  static const String routeName = 'screen-observer';
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
        title: Text('Observer', style: TextStyle(color: MyTheme.whiteColor)),
        centerTitle: true,
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.of(context).pop(ScreenSelection.routeName);
        //     },
        //     icon: Icon(Icons.arrow_back))
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Lottie.asset('assets/images/observer_lottie.json')),
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
              //gender
              CustomTextFormField(
                label: 'Gender', controller: gender,
                // mlhash suffixation icon??????????????????????????
                prefixIcon: Icon(Icons.perm_identity, color: MyTheme.redColor),
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter your gender';
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
              // lw 3ayz arbot el patient Id be el observer???????????????????????????????????????????

              // el spacer bydeny error????????????????????????????????????
              // SizedBox(height: MediaQuery.of(context).size.height*0.26),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // navigate to home screen patient
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreenObserver.routeName);
                    // Navigator.of(context).pushReplacementNamed(LoginScreen.routeName, arguments: 2);
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
