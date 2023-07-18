import 'package:shared_preferences/shared_preferences.dart';


class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

//con el nuevo sdk se utiliza un late , ver el video 
  SharedPreferences _prefs;

  initPrefs() async{
   this._prefs = await SharedPreferences.
   getInstance();
  }


  // ninguna de estas propiedades se va a usar 
  //bool _colorSecundario;
  //int _genero;
  //String _nombre;

  //get y set del genero
  get genero {
    return genero.getInt('genero')  ?? 1;
  }

  set genero( int value){
    _prefs.setInt('genero', value);
  }
}