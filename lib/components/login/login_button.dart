import 'package:flutter/material.dart';
import 'package:splash_screen/controllers/login_controller.dart';

class LoginButton extends StatelessWidget {
  final LoginController loginController;
  const LoginButton({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.loading,
      builder: (_, loading, __) {
        return loading
            ? const CircularProgressIndicator()
            : ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                onPressed: () {
                  loginController.auth().then((result) => result
                      ? Navigator.of(context).pushReplacementNamed("/home")
                      : ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Falha ao realizar login"),
                            duration: Duration(seconds: 5),
                          ),
                        ));
                },
              );
      },
    );
  }
}
