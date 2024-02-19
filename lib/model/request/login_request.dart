/// email : "roo3hm23332ed@gmail.com"
/// password : "342414"

class LoginRequest {
  LoginRequest({
    this.email,
    this.password,
  });

  LoginRequest.fromJson(dynamic json) {
    email = json['email'];
    password = json['password'];
  }

  String? email;
  String? password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    return map;
  }

}