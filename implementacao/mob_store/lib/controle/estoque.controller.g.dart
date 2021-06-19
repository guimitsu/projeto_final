// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estoque.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EstoqueController on EstoqueControllerBase, Store {
  final _$descricaoAtom = Atom(name: 'EstoqueControllerBase.descricao');

  @override
  TextEditingController get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(TextEditingController value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$tamanhoAtom = Atom(name: 'EstoqueControllerBase.tamanho');

  @override
  TextEditingController get tamanho {
    _$tamanhoAtom.reportRead();
    return super.tamanho;
  }

  @override
  set tamanho(TextEditingController value) {
    _$tamanhoAtom.reportWrite(value, super.tamanho, () {
      super.tamanho = value;
    });
  }

  final _$corAtom = Atom(name: 'EstoqueControllerBase.cor');

  @override
  TextEditingController get cor {
    _$corAtom.reportRead();
    return super.cor;
  }

  @override
  set cor(TextEditingController value) {
    _$corAtom.reportWrite(value, super.cor, () {
      super.cor = value;
    });
  }

  final _$quantidadeAtom = Atom(name: 'EstoqueControllerBase.quantidade');

  @override
  TextEditingController get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(TextEditingController value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  final _$isReadOnlyAtom = Atom(name: 'EstoqueControllerBase.isReadOnly');

  @override
  bool get isReadOnly {
    _$isReadOnlyAtom.reportRead();
    return super.isReadOnly;
  }

  @override
  set isReadOnly(bool value) {
    _$isReadOnlyAtom.reportWrite(value, super.isReadOnly, () {
      super.isReadOnly = value;
    });
  }

  final _$EstoqueControllerBaseActionController =
      ActionController(name: 'EstoqueControllerBase');

  @override
  dynamic addProduto() {
    final _$actionInfo = _$EstoqueControllerBaseActionController.startAction(
        name: 'EstoqueControllerBase.addProduto');
    try {
      return super.addProduto();
    } finally {
      _$EstoqueControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
descricao: ${descricao},
tamanho: ${tamanho},
cor: ${cor},
quantidade: ${quantidade},
isReadOnly: ${isReadOnly}
    ''';
  }
}
