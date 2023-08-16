class UserModel {
  final String? userName;
  final String? password;

  UserModel({this.userName, this.password});

  toMap() {
    return {
      userName: "userNama",
      password: "password",
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      password: map['password'],
      userName: map['userName'],
    );
  }
}
