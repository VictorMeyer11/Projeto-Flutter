import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 38,
              ),
            const TextField(
              decoration: InputDecoration(hintText: "User")
            ),
            const SizedBox(height: 18),
            const TextField(
              decoration: InputDecoration(hintText: "Password")
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/pageTwo',
                  arguments: "a"
                );
              }, 
              child: const Text("Login")
            ),
          ],
        ),
      ),
    );
  }
}
