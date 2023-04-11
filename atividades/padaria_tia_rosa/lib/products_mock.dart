import 'package:padaria_tia_rosa/src/constants.dart';
import 'package:padaria_tia_rosa/src/domain/product.dart';

class ProductsMock {

  List<Product> produtos = [
    Product(
      1, "Pão Frances", "O pão favorito dos brasileiros", fotoPao, "10"),
    Product(2, "Sonho",
      "Você não vai ter coragem de não levar pra casa né?", fotoSonho, "15"),
    Product(3, "Misto Quente e Refri",
      "O lanche mais querido por qualquer pessoa", fotoLanche, "20")
];

}
