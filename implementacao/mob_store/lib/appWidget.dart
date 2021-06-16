import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'aplicacao/home.page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Observer(builder: (_){
      return MaterialApp(
        theme: ThemeData(
            fontFamily: "Titillium",
        ),
        home: HomePage(),
      );
    });
  }
}


