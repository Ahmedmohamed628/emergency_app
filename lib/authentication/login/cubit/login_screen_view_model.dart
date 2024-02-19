import 'package:ambulance/api/api_manager.dart';
import 'package:ambulance/authentication/login/cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenViewModel extends Cubit<LoginState> {
  LoginScreenViewModel() : super(LoginInitialState());

  //hold data - handle logic
  void login(String email, String password) async {
    try {
      emit(LoginLoadingState(loadingMessage: 'loading...'));
      var response = await ApiManager.login3(email, password);
      if (response.massage == 'error') {
        emit(LoginErrorState(errorMessage: response.massage));
      } else {
        emit(LoginSuccessState());
      }
    } catch (e) {}
  }
}
//todo : loading - error - success - initial stat
