import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mob_store/design/background.dart';
import 'package:mob_store/negocio/estoque.dart';
import 'package:mob_store/negocio/produto.dart';

class EstoquePage extends StatelessWidget {
 final estoque = GetIt.I.get<Estoque>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFAFC3),
        elevation: 0,
        title: Text("ESTOQUE"),
      ),
      body: Container(
        decoration: background_box,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration : BoxDecoration(
                color: Color(0x99FFAFC3),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: ListView.builder(
                  itemBuilder:(BuildContext context, int index) => ListaProdutos(estoque.produtos[index]),
                  itemCount: estoque.produtos.length,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => /*estoque.addProduto(produto)*/ null, child: Text("Adicionar", style: TextStyle(fontSize: 8),)),
                ElevatedButton(onPressed: () => /*estoque.addProduto(produto)*/ null, child: Text("Alterar", style: TextStyle(fontSize: 8),)),
                ElevatedButton(onPressed: () => /*estoque.addProduto(produto)*/ null, child: Text("Excluir", style: TextStyle(fontSize: 8),)),
                ElevatedButton(onPressed: () => /*estoque.addProduto(produto)*/ null, child: Text("Visualizar", style: TextStyle(fontSize: 8),)),
              ],
            ),
            Container(
              decoration : BoxDecoration(
                color: Color(0x99FFAFC3),
                border: Border.all(color: Colors.black, width: 2),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}

class ListaProdutos extends StatelessWidget {
  final Produto produto;
  ListaProdutos(this.produto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Row(
          children: [
            Text(produto.descProduto),
            Text(produto.tamanho),
            Text(produto.cor),
            Text(produto.quantidade.toString()),
            Text(produto.cdProd.toString()),
          ],
    ),
    );
  }
}
