import 'package:flutter/material.dart';
import 'package:learning/domain/controllers/login_controller.dart';
import 'package:learning/presentation/pages/login/components/custom_value_listenable_builder.dart';
import 'package:learning/presentation/pages/login/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  
  final LoginController _controller = LoginController();
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 38,
            ),
            CustomTextField(
              onChanged: _controller.setLogin, 
              label: "User"
            ),
            const SizedBox(height: 18),
            CustomTextField(
              onChanged: _controller.setLogin, 
              label: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 18),
            CustomValueListenableBuilder(loginController: _controller)
          ]
        )
      )
    );
  }
}
