import 'package:flutter/material.dart';
import 'package:learning/page_two.dart';
import 'package:learning/splash_page.dart';

import 'home_page.dart';

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
        '/homePage':(_) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/pageTwo': (_) => const PageTwo()
      }
    );
  }
}