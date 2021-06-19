import 'package:mob_store/negocio/estoque.dart';
import 'package:flutter/material.dart';
import 'package:mob_store/negocio/produto.dart';
import 'package:mobx/mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mob_store/enums.dart';
part 'estoque.controller.g.dart';

class EstoqueController = EstoqueControllerBase
    with _$EstoqueController;

abstract class EstoqueControllerBase with Store {
  final estoque = GetIt.I.get<Estoque>();

  @observable
  TextEditingController descricao = TextEditingController();

  @observable
  TextEditingController tamanho = TextEditingController();

  @observable
  TextEditingController cor = TextEditingController();

  @observable
  TextEditingController quantidade = TextEditingController();

  @observable
  bool isReadOnly = true;

  @observable
  CRUD tipoOperacao;

  @observable
  int cdProd;

  @action
  addProduto(){
    this.isReadOnly = false;
    tipoOperacao = CRUD.create;
  }

  @action
  removeProduto(){
    this.tipoOperacao = CRUD.delete;
  }

  @action
  alteraProduto(){
    this.isReadOnly = false;
    this.tipoOperacao = CRUD.update;
  }

  @action
  trataFinalicao(){
    switch(tipoOperacao) {
      case CRUD.create:
        int cdProd = estoque.produtos.isNotEmpty ? estoque.produtos.length : 0;
        Produto produto = Produto(this.descricao.text, tamanho.text, cor.text, cdProd, int.tryParse(quantidade.text));
        estoque.addProduto(produto);
        trataCancela();
        break;
      case CRUD.read:

        break;
      case CRUD.update:
        Produto produto = Produto(this.descricao.text, tamanho.text, cor.text, this.cdProd, int.tryParse(quantidade.text));
        estoque.alteraProduto(this.cdProd, produto);
        trataCancela();
        break;
      case CRUD.delete:
        Produto produto = Produto(this.descricao.text, tamanho.text, cor.text, this.cdProd, int.tryParse(quantidade.text));
        estoque.excluiProduto(produto);
        trataCancela();
        break;
      case CRUD.undefined:
        // TODO: Handle this case.
        break;
    }
  }

  @action
  trataCancela(){
    this.cdProd = null;
    this.isReadOnly = true;
    this.descricao.clear();
    this.tamanho.clear();
    this.cor.clear();
    this.quantidade.clear();
    this.tipoOperacao = CRUD.undefined;
  }
}