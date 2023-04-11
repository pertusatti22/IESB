
import 'package:flutter/material.dart';

import '../../products_mock.dart';
import '../domain/product.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.produto,
    required this.database,
  }) : super(key: key);

  final Product produto;
  final ProductsMock database;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(produto.fotoProduto),
            Text(
              produto.nomeProduto,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              produto.descricao,
              style: const TextStyle(fontSize: 14),
            ),
            Text(
              produto.preco,
              style: const TextStyle(fontSize: 14),
            ),
            ButtonBar(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                ),
                IconButton(
                  onPressed: () {
                    database.favoritos.add(
                        produto
                    );
                  },
                  icon: const Icon(Icons.star_border),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
