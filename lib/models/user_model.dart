

class UserModel {
  String? name;
  String? email;
  int? mobile;
  String? password;


  UserModel({
    this.name,
    this.email,
    this.mobile,
    this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return new UserModel(
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      password: json['password'],
    );
  }
}
