import 'package:ambulance/authentication/login/login_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreenViewModel extends ChangeNotifier {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //todo: hold data - handle logic
  late LoginNavigator navigator;
  var formKey = GlobalKey<FormState>();

  void login() async {
    if (formKey.currentState!.validate() == true) {
      navigator.showMyLoading();
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);

        // var user = await FirebaseUtils.readUserFromFireStore(credential.user?.uid??"");
        // if(user == null){
        //   return ;
        // }
        // var authProvider = Provider.of<AuthProvider>(context,listen: false);
        // authProvider.updateUser(user);
        //todo: hide loading
        navigator.hideMyLoading();
        //todo: show message
        navigator.showMessage('Login Successfully');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
          //todo: hide loading
          navigator.hideMyLoading();
          //todo: show message
          navigator.showMessage(
              'No user found for that email or Wrong password provided for that use');
        }
      } catch (e) {
        //todo: hide loading
        navigator.hideMyLoading();
        //todo: show message
        navigator.showMessage(e.toString());
      }
    }
  }
}
