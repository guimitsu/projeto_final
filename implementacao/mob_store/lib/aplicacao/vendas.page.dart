import 'package:flutter/material.dart';
import 'package:mob_store/design/background.dart';

class VendasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VENDAS',
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String nomeProduto = "";
  var _produtos = ['Camisa', 'Calça', 'Tenis', 'Jaqueta'];
  var _itemSelecionado = 'Camisa';
  var _qtde = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  var _qtdeSelecionada = '1';
  var _pagamento = ['Cartão', 'Dinheiro'];
  var _meioPagamento = 'Dinheiro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("VENDAS"),
          backgroundColor: Color(0xFFFFAFC3),
          elevation: 0,
        ),
        body: Container(
          color: Color(0x59FFAAA0),
          child: criaDropDownButton(),
        ));
  }

  criaDropDownButton() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Selecione o Produto"),
            DropdownButton<String>(
              items: _produtos.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String novoItemSelecionado) {
                setState(() {
                  this._itemSelecionado = novoItemSelecionado;
                });
              },
              value: _itemSelecionado,
            ),
            Text("Quantidade"),
            DropdownButton<String>(
              items: _qtde.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String novaqtdeSelecionada) {
                setState(() {
                  this._qtdeSelecionada = novaqtdeSelecionada;
                });
              },
              value: _qtdeSelecionada,
            ),
            Text("Meio de Pagamento"),
            DropdownButton<String>(
              items: _pagamento.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String novoMeioPagamento) {
                setState(() {
                  this._meioPagamento = novoMeioPagamento;
                });
              },
              value: _meioPagamento,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 20,
                    width: 120,
                    child: Text('Valor R\$'),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text('Resumo da Compra'),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFAFC3),
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Produto Selecionado: $_itemSelecionado \nQuantidade: $_qtdeSelecionada \nMeio de Pagamento: $_meioPagamento \nValor R\$:',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      ElevatedButton(child: Text('Efetiva'), onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      ElevatedButton(child: Text('Cancela'), onPressed: null),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
