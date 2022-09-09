import 'package:flutter/cupertino.dart';

class LoginController {
  ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  String? _username;
  String? _password;

  setUsername(value) => value = _username;
  setPassword(value) => value = _password;

  Future<bool> auth() async {
    loading.value = true;
    await Future.delayed(
      const Duration(seconds: 2),
    );
    loading.value = false;
    return _username == 'admin' && _password == '123';
  }
}
