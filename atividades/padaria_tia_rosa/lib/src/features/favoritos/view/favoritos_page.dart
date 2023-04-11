import 'package:flutter/material.dart';

import 'package:padaria_tia_rosa/src/widgets/custom_card.dart';

import '../../../../products_mock.dart';
import '../../../domain/product.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({Key? key}) : super(key: key);

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  final database = ProductsMock();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          itemCount: database.favoritos.length,
          itemBuilder: (context, id) {
            Product favorito = database.favoritos[id];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(produto: favorito, database: database,),
            );
          }),
    );
  }
}
