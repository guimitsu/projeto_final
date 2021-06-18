import 'package:mob_store/negocio/produto.dart';

class Estoque {
  List<Produto> produtos = [];

  void addProduto(Produto produto){
    produtos.add(produto);
  }

  void excluiProduto(Produto produto){
    produtos.remove(produto);
  }

  void alteraProduto(Produto produto){

  }

  Produto visualizaProduto(int cdProd){
    Produto produto;
    return produto;
  }
}