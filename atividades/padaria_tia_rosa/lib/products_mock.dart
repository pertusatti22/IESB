import 'package:padaria_tia_rosa/src/constants.dart';
import 'package:padaria_tia_rosa/src/domain/product.dart';

class ProductsMock {

  List<Product> produtos = [
    Product(
      1, "Pão Frances", "O pão favorito dos brasileiros", fotoPao, "R\$ 10,00"),
    Product(2, "Sonho",
      "Você não vai ter coragem de não levar pra casa né?", fotoSonho, "R\$ 15,00"),
    Product(3, "Misto Quente e Refri",
      "O lanche mais querido por qualquer pessoa", fotoLanche, "R\$ 20,00")
];

  List<Product> favoritos = [
    Product(3, "Misto Quente e Refri",
        "O lanche mais querido por qualquer pessoa", fotoLanche, "R\$ 20,00")
  ];
}
