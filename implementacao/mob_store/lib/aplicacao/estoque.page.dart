import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mob_store/controle/estoque.controller.dart';
import 'package:mob_store/design/background.dart';
import 'package:mob_store/enums.dart';
import 'package:mob_store/negocio/estoque.dart';
import 'package:mob_store/negocio/produto.dart';
import 'package:mob_store/util.dart';

class EstoquePage extends StatelessWidget {
 final estoque = GetIt.I.get<Estoque>();
 final estoqueController = GetIt.I.get<EstoqueController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFAFC3),
        elevation: 0,
        title: Text("ESTOQUE"),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Observer( builder: (_){
          return Container(
            decoration: background_box,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration : BoxDecoration(
                    color: Color(0x99FFAFC3),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("DESCRIÇÃO", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 8),
                      Text("TAMANHO", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 8),
                      Text("COR", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 8),
                      Text("QUANTIDADE", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 8),
                      Text("COD.", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 8),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
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
                    ElevatedButton(
                      onPressed: () => estoqueController.tipoOperacao == CRUD.undefined ?
                      estoqueController.addProduto():
                      null,
                      child: Text("Adicionar", style: TextStyle(fontSize: 8),),
                      style: ElevatedButton.styleFrom(primary: Color(0x99FFAFC3)),
                    ),

                    ElevatedButton(
                      onPressed: ()  {
                        estoqueController.alteraProduto();
                      },
                      child: Text("Alterar", style: TextStyle(fontSize: 8),),
                      style: ElevatedButton.styleFrom(primary: Color(0x99FFAFC3)),),
                    ElevatedButton(
                      onPressed: () {
                        estoqueController.removeProduto();
                        estoqueController.trataFinalicao();
                      },
                      child: Text("Excluir", style: TextStyle(fontSize: 8),),
                      style: ElevatedButton.styleFrom(primary: Color(0x99FFAFC3)),),
                    ElevatedButton(
                      onPressed: () => /*estoque.addProduto(produto)*/ null,
                      child: Text("Visualizar", style: TextStyle(fontSize: 8),),
                      style: ElevatedButton.styleFrom(primary: Color(0x99FFAFC3)),),
                  ],
                ),
                Container(
                  decoration : BoxDecoration(
                    color: Color(0x99FFAFC3),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        inputFormatters: [UpperCaseTextFormatter()],
                        readOnly: estoqueController.isReadOnly,
                        controller: estoqueController.descricao,
                        decoration: InputDecoration(
                          hintText: "Descrição",
                        ),
                      ),
                      TextField(
                        inputFormatters: [UpperCaseTextFormatter()],
                        readOnly: estoqueController.isReadOnly,
                        controller: estoqueController.tamanho,
                        decoration: InputDecoration(
                          hintText: "Tamanho",
                        ),
                      ),
                      TextField(
                        inputFormatters: [UpperCaseTextFormatter()],
                        readOnly: estoqueController.isReadOnly,
                        controller: estoqueController.cor,
                        decoration: InputDecoration(
                          hintText: "Cor",
                        ),
                      ),
                      TextField(
                        inputFormatters: [UpperCaseTextFormatter()],
                        readOnly: estoqueController.isReadOnly,
                        controller: estoqueController.quantidade,
                        decoration: InputDecoration(
                          hintText: "Quantidade",
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => estoqueController.trataCancela(),
                            child: Text("CANCELAR", style: TextStyle(fontSize: 8),),
                            style: ElevatedButton.styleFrom(primary: Color(0x99FFAFC3)),),
                          ElevatedButton(
                            onPressed: () => estoqueController.trataFinalicao(),
                            child: Text("CONFIRMAR", style: TextStyle(fontSize: 8),),
                            style: ElevatedButton.styleFrom(primary: Color(0x99FFAFC3)),),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        ),
      ),
    );
  }
}

class ListaProdutos extends StatelessWidget {
  final Produto produto;
  final estoqueController = GetIt.I.get<EstoqueController>();
  ListaProdutos(this.produto);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        estoqueController.cdProd = produto.cdProd;
        estoqueController.descricao.text = produto.descProduto;
        estoqueController.cor.text = produto.cor;
        estoqueController.tamanho.text = produto.tamanho;
        estoqueController.quantidade.text = produto.quantidade.toString();
      },
      child: Container(
        decoration : BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
        ),
        width: MediaQuery.of(context).size.width * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(produto.descProduto),
              SizedBox(width: 8),
              Text(produto.tamanho),
              SizedBox(width: 8),
              Text(produto.cor),
              SizedBox(width: 8),
              Text(produto.quantidade.toString()),
              SizedBox(width: 8),
              Text(produto.cdProd.toString()),
              SizedBox(width: 8),
            ],
      ),
      ),
    );
  }
}
