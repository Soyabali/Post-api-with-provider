import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/signup_model.dart';
import '../service/service_class.dart';

class DataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<void> postData(SignUpBody body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await register(body))!;
    if (response.statusCode == 201) {
      isBack = true;

    }
    loading = false;
    notifyListeners();
  }
}