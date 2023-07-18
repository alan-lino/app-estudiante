import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {

    final prefs = new PreferenciasUsuario(); 

    return Scaffold(
      appBar: AppBar(
        title: Text ('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario'),
          Divider(),
          Text('Genero: ${prefs.genero}'),
          Divider(),
          Text('Color secundario'),
          Divider(),
        ],
      ),
    );
  }


}