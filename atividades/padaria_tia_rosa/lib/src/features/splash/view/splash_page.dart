import 'package:flutter/material.dart';
import 'package:padaria_tia_rosa/src/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) => {
      Navigator.of(context).pushNamed('/onboard')
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              LOGO,
              height: 96,
            ),
          ),
          Text(
            TITLE.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
