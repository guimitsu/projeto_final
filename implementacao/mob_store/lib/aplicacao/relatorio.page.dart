import 'package:flutter/material.dart';
import 'package:mob_store/design/background.dart';
import 'package:intl/intl.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.date_range),
                  iconSize: (50),
                  color: Color(0xFF800000),
                  onPressed: () async {
                    DateTime dataInicio = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2016),
                        lastDate: DateTime(2045),
                        locale: Localizations.localeOf(context, nullOk: false),
                        builder: (BuildContext context, Widget child) {
                          return Theme(
                            data: ThemeData.dark(),
                            child: child,
                          );
                        });
                    if (dataInicio != null) {
                      final inicioData =
                          DateFormat(DateFormat.YEAR_MONTH_DAY, 'en_US')
                              .format(dataInicio);
                      return inicioData;
                    }
                  },
                ),
                IconButton(
                  icon: Icon(Icons.date_range),
                  iconSize: (50),
                  color: Color(0xFF800000),
                  onPressed: () async {
                    final dataFinal = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2016),
                      lastDate: DateTime(2045),
                      locale: Localizations.localeOf(context),
                      builder: (BuildContext context, Widget child) {
                        return Theme(
                          data: ThemeData.dark(),
                          child: child,
                        );
                      },
                    );
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: (50),
                  width: (130),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Flexible(
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            labelText: 'Data Inicial',
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: (50),
                  width: (130),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Flexible(
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            labelText: 'Data Final',
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Total em Caixa',
                        enabled: false,
                        border: OutlineInputBorder()),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Produto Mais Vendido',
                        enabled: false,
                        border: OutlineInputBorder()),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                      child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Dia com Maior Venda',
                        enabled: false,
                        border: OutlineInputBorder()),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.assignment),
        foregroundColor: Color(0xFF800000),
        backgroundColor: Color(0xFFFFAFC3),
      ),
    );
  }
}
