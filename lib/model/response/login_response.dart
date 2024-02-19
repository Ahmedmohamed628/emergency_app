///{"message":"email with token"}
///https://emergency-app.onrender.com/signIn
class LoginResponse {
  LoginResponse({this.massage});

  LoginResponse.fromJson(dynamic json) {
    massage = json['massage'];
  }

  String? massage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['massage'] = massage;
    return map;
  }
}
