import 'package:flutter/material.dart';
import 'package:learning/controllers/login_controller.dart';

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
            TextField(
              decoration: const InputDecoration(hintText: "User"),
              onChanged: _controller.setLogin,
            ),
            const SizedBox(height: 18),
            TextField(
              decoration: const InputDecoration(hintText: "Password"),
              onChanged: _controller.setPass,
            ),
            const SizedBox(height: 18),
            ValueListenableBuilder(
              valueListenable: _controller.inLoader,
              builder: (_, inLoader, __) => inLoader == true 
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: () {
                    _controller.auth().then((result) {
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
            )
          ],
        ),
      ),
    );
  }
}
