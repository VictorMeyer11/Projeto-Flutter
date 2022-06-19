import 'package:flutter/material.dart';

import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.white)
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashPage(),
        '/loginPage':(_) => LoginPage(title: 'Flutter Demo'),
        '/homePage': (_) => const HomePage()
      }
    );
  }
}