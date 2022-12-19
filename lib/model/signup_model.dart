class SignUpBody{
  String name;
  String phone;
  String email;
  String password;
  SignUpBody({
    required this.name,
    required this.phone,
    required this.email,
    required this.password
  });

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["job"] = phone;
    data['email'] = email;
    data['password'] = password;
    print('Response api data --- $data');
    return data;
  }
}