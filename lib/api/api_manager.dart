import 'package:ambulance/model/request/register_request.dart';
import 'package:dartz/dartz.dart';

import '../domain/entities/failures.dart';

///https://emergency-app.onrender.com/signUp

class ApiManager {
  ApiManager._();

  static ApiManager? _instance;

  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

// Future<Either<Failures, RegisterRequest>> register(String name,
//     String email, String password, String rePassword, String phone) async {
//   final connectivityResult = await (Connectivity().checkConnectivity());
//   if (connectivityResult == ConnectivityResult.mobile ||
//       connectivityResult == ConnectivityResult.wifi) {
//     // I am connected to a mobile network or wifi .
//     Uri url = Uri.https(Apiconstants.baseUrl, Apiconstants.registerApi);
//     var requestBody = RegisterRequest(
//         name: name,
//         email: email,
//         rePassword: rePassword,
//         phone: phone,
//         password: password);
//     var response = await http.post(url, body: requestBody.toJson());
//     var responseBody = response.body;
//     var json = jsonDecode(responseBody);
//     var registerResponse = RegisterResponseDto.fromJson(json);
//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       return Right(registerResponse);
//     } else {
//       return Left(Failures(
//           errorMessage: registerResponse.error != null
//               ? registerResponse.error!.msg
//               : registerResponse.message));
//     }
//   } else {
//     /// no internet connection
//     return Left(Failures(errorMessage: 'Check Internet connection'));
//   }
// }
}
