
import 'package:flutter/material.dart';
import 'package:padaria_tia_rosa/src/features/home/view/home_page.dart';
import 'package:padaria_tia_rosa/src/features/onboard/view/onboard_page.dart';
import 'package:padaria_tia_rosa/src/features/splash/view/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Padaria Tia Rosa',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/onboard': (context) => const OnBoardPage(),
        '/home': (context) => const MyHomePage(title: 'Padaria Tia Rosa'),
      },
    );
  }
}
