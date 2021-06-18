class Caixa {
  double _valor;
  Caixa(this._valor);

  double get valor => _valor;
  set valor(double dinheiro){
    _valor += dinheiro;
  }
}