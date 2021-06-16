import 'package:flutter/material.dart';
import 'package:mob_store/design/background.dart';

class RelatorioPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFAFC3),
        elevation: 0,
        title: Text("RELATÓRIO"),
      ),
      body: Container(
        decoration: background_box,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(),
      ),
    );
  }
}
