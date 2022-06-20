import 'package:flutter/material.dart';
import 'package:learning/domain/controllers/login_controller.dart';

class CustomValueListenableBuilder extends StatelessWidget {
  const CustomValueListenableBuilder({Key? key, required this.loginController}) : super(key: key);

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader == true 
      ? const CircularProgressIndicator()
      : ElevatedButton(
          onPressed: () {
            loginController.auth().then((result) {
              if(result) {
                Navigator.of(context).pushReplacementNamed(
                  '/home_page',
                  arguments: "a"
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Failed!"))
                );
              }
            });
          }, 
          child: const Text("Login")
        )
    );
  }
}