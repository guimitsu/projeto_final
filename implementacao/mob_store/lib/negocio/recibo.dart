class Recibo {
  final String _descProd;
  final double _valor;
  final double _desconto;
  final DateTime _data ;
  final int _numPedido;

  Recibo(this._descProd, this._valor, this._desconto, this._data, this._numPedido);

  get descProd => _descProd;
  get  valor => _valor;
  get  desconto => _desconto;
  get  data => _data;
  get  numPedido => _numPedido;
}