import 'package:flutter/material.dart';

import '../../../../products_mock.dart';
import '../../../domain/product.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({Key? key}) : super(key: key);

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  final database = ProductsMock();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
              itemCount: database.produtos.length,
              itemBuilder: (context, id) {
                Product itemPedido = database.produtos[id];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                    title:Text(itemPedido.nomeProduto),
                    trailing: Text(itemPedido.preco),
                  ),
                );
              }),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("Comprar"),
        ),
        const SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
