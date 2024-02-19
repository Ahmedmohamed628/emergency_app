abstract class LoginState {}

class LoginLoadingState extends LoginState {
  String? loadingMessage;

  LoginLoadingState({required this.loadingMessage});
}

class LoginErrorState extends LoginState {
  String? errorMessage;

  LoginErrorState({required this.errorMessage});
}

class LoginSuccessState extends LoginState {}

class LoginInitialState extends LoginState {}
