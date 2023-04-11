import 'package:flutter/material.dart';
import 'package:padaria_tia_rosa/products_mock.dart';
import 'package:padaria_tia_rosa/src/domain/product.dart';
import 'package:padaria_tia_rosa/src/widgets/product/custom_product.dart';

class OfertasPage extends StatefulWidget {
  const OfertasPage({Key? key}) : super(key: key);

  @override
  State<OfertasPage> createState() => _OfertasPageState();
}

class _OfertasPageState extends State<OfertasPage> {
  final produtos = ProductsMock().produtos;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, id){
            Product produto = produtos[id];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  leading: Image.asset(produto.fotoProduto),
                  title: Text(produto.nomeProduto),
                  subtitle: Text(produto.descricao),
                  trailing: Column(
                    children: [
                      //TODO corrigir espaçamento dos botões e card
                      IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.star))
                    ],
                  ),
                  isThreeLine: true,
                ),
              ),
            );
          }),
    );
  }
}
