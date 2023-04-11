import 'package:flutter/material.dart';
import 'package:padaria_tia_rosa/products_mock.dart';
import 'package:padaria_tia_rosa/src/domain/product.dart';

import '../../../widgets/custom_card.dart';

class OfertasPage extends StatefulWidget {
  const OfertasPage({Key? key}) : super(key: key);

  @override
  State<OfertasPage> createState() => _OfertasPageState();
}

class _OfertasPageState extends State<OfertasPage> {
  final database = ProductsMock();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          itemCount: database.produtos.length,
          itemBuilder: (context, id) {
            Product produto = database.produtos[id];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(produto: produto, database: database),
            );
          }),
    );
  }
}
