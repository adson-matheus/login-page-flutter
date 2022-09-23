import 'package:flutter/material.dart';
import 'package:splash_screen/components/login/login_button.dart';
import 'package:splash_screen/controllers/login_controller.dart';
import 'package:splash_screen/widgets/login/text_field_widget.dart';

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
              TextFieldWidget(
                onChanged: _controller.setUsername,
                label: "Usuário",
                icon: Icons.person,
              ),
              TextFieldWidget(
                onChanged: _controller.setPassword,
                label: "Senha",
                icon: Icons.password,
              ),
              const SizedBox(
                height: 50,
              ),
              LoginButton(loginController: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
