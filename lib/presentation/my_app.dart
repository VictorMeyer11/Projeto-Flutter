import 'package:flutter/material.dart';
import 'package:learning/presentation/pages/home/home_page.dart';
import 'package:learning/presentation/pages/login/login_page.dart';
import 'package:learning/presentation/pages/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashPage(),
        '/loginPage':(_) => LoginPage(title: 'Flutter Demo'),
        '/homePage': (_) => const HomePage()
      }
    );
  }
}