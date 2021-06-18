import 'package:mob_store/negocio/categoria.dart';

class Produto {

  final String _descProduto;
  final String _tamanho;
  final String _cor;
  final int _cdProd;
  final int _quantidade;
  Categoria _categoria;

  Produto(this._descProduto, this._tamanho, this._cor, this._cdProd, this._quantidade, this._categoria);

  String get descProduto => _descProduto;
  String get tamanho => _tamanho;
  String get cor => _cor;
  int get cdProd => _cdProd;
  int get quantidade => _quantidade;
  Categoria get categoria => _categoria;

}