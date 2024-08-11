import 'package:flutter/material.dart';
import 'package:mercado_pago/src/screens/AdminUsers.dart';
import 'package:mercado_pago/src/screens/InicioDesesion.dart';
import 'package:mercado_pago/src/screens/RegistroUsuario.dart';
import 'package:mercado_pago/src/screens/menu_principal.dart';
import 'package:mercado_pago/src/screens/perfilUsuario.dart';

void main(List<String> args) {
  runApp(proyectoMercadoLibre());
}


class proyectoMercadoLibre extends StatelessWidget {
  const proyectoMercadoLibre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: paginaDeRegistro(),
      routes: {
        '/inicio':(context) => PaginaDeInicio(),
      },
    );
  }
}