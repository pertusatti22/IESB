
import 'package:flutter/material.dart';
import 'package:padaria_tia_rosa/src/features/home/view/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padaria Tia Rosa',
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Padaria Tia Rosa'),
    );
  }
}
