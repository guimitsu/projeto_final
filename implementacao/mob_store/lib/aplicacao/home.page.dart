import 'package:flutter/material.dart';
import 'package:mob_store/aplicacao/estoque.page.dart';
import 'package:mob_store/aplicacao/info.page.dart';
import 'package:mob_store/aplicacao/relatorio.page.dart';
import 'package:mob_store/aplicacao/vendas.page.dart';
import 'package:mob_store/design/background.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background_box,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (_) => new EstoquePage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0x99FFAFC3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.checkroom),
                          ),
                          Text("ESTOQUE"),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (_) => new VendasPage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x99FFAFC3),
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.monetization_on_outlined),
                          ),
                          Text("VENDAS"),
                        ],
                      ),
                    ),),
                ),
              ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (_) => new RelatorioPage(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x99FFAFC3),
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.assignment),
                            ),
                            Text("RELATÓRIO", style: TextStyle(fontSize: 12),),
                          ],
                        ),
                      ),),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (_) => new InfoPage(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x99FFAFC3),
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.info_outline_rounded),
                            ),
                            Text("INFO"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
