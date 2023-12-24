/// email : "roo3hm23332ed@gmail.com"
/// password : "342414"
///https://emergency-app.onrender.com/signIn
class LoginRequest {
  LoginRequest({this.email, this.password, this.massage});

  LoginRequest.fromJson(dynamic json) {
    email = json['email'];
    password = json['password'];
    massage = json['massage'];
  }

  String? email;
  String? password;
  String? massage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    map['massage'] = massage;
    return map;
  }
}
