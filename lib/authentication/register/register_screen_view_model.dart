import 'package:ambulance/authentication/register/register_navigator.dart';
import 'package:flutter/material.dart';

class RegisterScreenViewModel extends ChangeNotifier {
  //todo: hold data - handle logic
  late RegisterNavigator navigator;

  void register(String name, String email, String phone, String address,
      String password, String confirmPassword) {
    //todo: show loading
    navigator.showMyLoading();

    /// hna yb2a el logic y3ml check 3la el register data lw mzbota ======>

    //todo: hide loading
    navigator.hideMyLoading();

    // todo: show message
    navigator.showMessage('Register successfully');
  }
}
