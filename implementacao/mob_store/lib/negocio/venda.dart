import 'package:mob_store/negocio/produto.dart';
import 'package:mob_store/negocio/recibo.dart';

import 'caixa.dart';

class Venda {
  final List<Produto> _produto;
  final double _total;
  final DateTime _data;

  Venda(this._produto, this._total, this._data);

  get produto => _produto;
  get total => _total;
  get data => _data;

  Recibo geraRecibo(String descProd,  String tamanho, int qtde){
    Recibo recibo;

    return recibo;
  }

  void finalizaVenda(Caixa caixa){

  }
}