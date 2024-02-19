import 'dart:convert';

import 'package:ambulance/api/api_constant.dart';
import 'package:ambulance/model/request/login_request.dart';
import 'package:ambulance/model/response/login_response.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  // ApiManager._();
  //
  // static ApiManager? _instance;
  //
  // static ApiManager getInstance() {
  //   _instance ??= ApiManager._();
  //   return _instance!;
  // }

  // static Future<LoginResponse> login() async {
  //   // https://emergency-app.onrender.com/signIn
  //   // gwa el () b7ot => 1- authority .. da m3nah esm el server bta3y
  //   // 2- unencodedpath da elly hwa esm al api
  //   //3- query parameter.. da lw 3ndy parameter adefo w b7otha 3la shkl => map{}
  //   Uri url = Uri.https(ApiConstant.baseUrl, ApiConstant.loginApi);
  //   try {
  //     var response = await http.post(url);
  //     var bodyString = response.body; // hna hyb2a m3aya string
  //     var json = jsonDecode(bodyString); // 3shan a7wl el string l json
  //     return LoginResponse.fromJson(json); // 3shan a7wl el json l object
  //   }
  //   catch (e) {
  //     throw e; // m3naha ermely exception
  //   }
  // }

  static Future<LoginResponse> login3(String email, String password) async {
    Uri url = Uri.https(ApiConstant.baseUrl, ApiConstant.loginApi);
    try {
      var loginBody = LoginRequest(email: email, password: password);
      var response = await http.post(url, body: loginBody.toJson());
      // var loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return LoginResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}

//final connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult == ConnectivityResult.mobile ||
//         connectivityResult == ConnectivityResult.wifi
//     ) {
//     var loginBody =LoginRequest(email: email, password: password , message: message);
//       var response = await http.post(url, body: loginBody.toJson());
//       var loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
//     }
//
//
//     else{
//
//     }
