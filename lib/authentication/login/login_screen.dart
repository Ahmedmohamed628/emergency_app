import 'package:ambulance/authentication/login/login_navigator.dart';
import 'package:ambulance/authentication/login/login_screen_view_model.dart';
import 'package:ambulance/dialog_utils.dart';
import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/custom_text_form_field.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login-screen';

  // feh moshkela fe el index????????????????????????????????????????????????????????????????????????????????????????????
  // int index;
  // LoginScreen({required this.index});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> implements LoginNavigator {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmationPasswordController = TextEditingController();
  bool isObscure = true;
  LoginScreenViewModel viewModel = LoginScreenViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.navigator = this;
  }

  // List<String> homeScreens = [HomeScreenPatient.routeName, HomeScreenHospital.routeName, HomeScreenObserver.routeName];

  @override
  Widget build(BuildContext context) {
    // 3lshan ageeb el index mn el args
    // int index = ModalRoute.of(context)!.settings.arguments as int;
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: MyTheme.redColor,
          title: Text('Ambulance App'),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/ambulance_icon.png'),
                  radius: 60,
                  backgroundColor: MyTheme.redColor,
                ),
              ),
              Form(
                  key: viewModel.formKey,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        CustomTextFormField(
                            prefixIcon: Icon(Icons.email_rounded,
                                color: MyTheme.redColor),
                            label: 'Email address',
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'Please Enter an Email';
                              }
                              bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(text);
                              if (!emailValid) {
                                return 'Please Enter Valid Email';
                              }
                              return null;
                            }),
                        CustomTextFormField(
                            prefixIcon:
                                Icon(Icons.lock, color: MyTheme.redColor),
                            label: 'Password',
                            isPassword: isObscure,
                            keyboardType: TextInputType.number,
                            controller: passwordController,
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'Please Enter a Password';
                              }
                              if (text.length < 6) {
                                return 'Password should be at least 6 characters';
                              }
                              if (text != passwordController.text) {
                                return "password doesn't match";
                              }
                              return null;
                            }),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.of(context).pushReplacementNamed(HomeScreenPatient.routeName);
                              // Navigator.of(context).pushNamed(homeScreens[index]);

                              viewModel.login();
                            },
                            child: Text('Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: MyTheme.redColor,
                                padding: EdgeInsets.symmetric(vertical: 10)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500)),
                            TextButton(
                                onPressed: () {
                                  // navigate to register screen
                                  Navigator.of(context).pushReplacementNamed(
                                      RegisterScreen.routeName);
                                },
                                child: Text('Sign Up',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: MyTheme.redColor,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void hideMyLoading() {
    // TODO: implement hideMyLoading
    DialogUtils.hideLoading(context);
  }

  @override
  void showMessage(String message) {
    // TODO: implement showMessage
    DialogUtils.showMessage(context, message, posActionName: 'ok');
  }

  @override
  void showMyLoading() {
    // TODO: implement showMyLoading
    DialogUtils.showLoading(context, 'Loading...');
  }
}

//FutureBuilder<LoginResponse>(
//         future: ApiManager.login(),
//         builder:(context, snapshot) {
//           if(snapshot.connectionState == ConnectionState.waiting){
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           else if (snapshot.hasError){
//             return Column(
//               children: [
//                 Text('something went wrong'),
//                 ElevatedButton(onPressed: (){}, child: Text('try again'))
//               ],
//             );
//           }
//           if(snapshot.data.massage)
//
//         }) ,
//         child:
