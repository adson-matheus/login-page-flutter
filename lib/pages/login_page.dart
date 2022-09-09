import 'package:flutter/material.dart';
import 'package:splash_screen/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.teal,
                size: MediaQuery.of(context).size.height * 0.15,
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                onChanged: _controller.setUsername,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Usuário",
                ),
              ),
              TextField(
                onChanged: _controller.setUsername,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  hintStyle: TextStyle(),
                  hintText: "Senha",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _controller.loading,
                builder: (_, loading, __) {
                  return loading
                      ? const CircularProgressIndicator()
                      : ElevatedButton.icon(
                          icon: const Icon(Icons.login),
                          label: const Text("Login"),
                          onPressed: () => _controller.auth,
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
