import 'package:flutter/material.dart';
import 'package:padaria_tia_rosa/src/constants.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Text('Nome do Produto'),
          Image.asset(
            logoColor,
            height: 196,
          ),
          const Text('R\$ 45,00'),
        ],
      ),
    );
  }
}
