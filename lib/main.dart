import 'package:flutter/material.dart';
void main(){//metodo
  runApp(MyApp());
}

class MyApp extends StatelessWidget {//clase
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Formulario de registro',//texto plano
home: Scaffold(
  appBar: AppBar(
    title: Text('Inicia Sesion en SoftKids'),
  ),
),//estructura del cuerpo
    );
    throw UnimplementedError();
  }
}
