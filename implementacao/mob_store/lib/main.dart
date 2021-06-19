import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mob_store/controle/estoque.controller.dart';
import 'package:mob_store/negocio/caixa.dart';
import 'package:mob_store/negocio/estoque.dart';
import 'appWidget.dart';
import 'controle/relatorio.controller.dart';
import 'controle/venda.controller.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Estoque>(Estoque());
  getIt.registerSingleton<EstoqueController>(EstoqueController());
  getIt.registerSingleton<VendaController>(VendaController());
  getIt.registerSingleton<RelatorioController>(RelatorioController());
  getIt.registerSingleton<Caixa>(Caixa(0));
  runApp(AppWidget());
}

