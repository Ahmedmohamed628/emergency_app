/// name : "roo ahmed"
/// email : "roo3hm23332ed@gmail.com"
/// password : "342414"
/// rePassword : "342414"
/// phone : 142638933
/// address : "3 sanan basha elmanshya"
/// id : 152627333333333333333
///https://emergency-app.onrender.com/signUp
class RegisterRequest {
  RegisterRequest(
      {this.name,
      this.email,
      this.password,
      this.rePassword,
      this.phone,
      this.address,
      this.id,
      this.massage});

  RegisterRequest.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    rePassword = json['rePassword'];
    phone = json['phone'];
    address = json['address'];
    id = json['id'];
    massage = json['massage'];
  }

  String? name;
  String? email;
  String? password;
  String? rePassword;
  int? phone;
  String? address;
  double? id;
  String? massage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['rePassword'] = rePassword;
    map['phone'] = phone;
    map['address'] = address;
    map['id'] = id;
    map['massage'] = massage;
    return map;
  }
}
