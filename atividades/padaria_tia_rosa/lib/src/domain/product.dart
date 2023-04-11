
import 'dart:ui';

class Product {

  int id;
  String nomeProduto;
  String descricao;
  String fotoProduto;
  String preco;

  Product(this.id, this.nomeProduto, this.descricao, this.fotoProduto, this.preco);


  Product.produto(
      this.id, this.nomeProduto, this.descricao, this.fotoProduto, this.preco);

  String get formattedPreco {
    return "${preco.substring(-2)},";
  }
}