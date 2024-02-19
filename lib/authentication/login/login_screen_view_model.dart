import 'package:ambulance/authentication/login/login_navigator.dart';
import 'package:flutter/material.dart';

class LoginScreenViewModel extends ChangeNotifier {
  //todo: hold data - handle logic
  late LoginNavigator navigator;
  var formKey = GlobalKey<FormState>();

  void login() async {
    if (formKey.currentState!.validate() == true) {
      //todo: show loading
      navigator.showMyLoading();

      /// hna yb2a el logic y3ml check 3la el login data lw mzbota

      //todo: hide loading
      navigator.hideMyLoading();

      // todo: show message
      navigator.showMessage('Login successfully');
    }
  }
}
