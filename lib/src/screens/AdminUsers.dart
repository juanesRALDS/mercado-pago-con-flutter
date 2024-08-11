import 'package:flutter/material.dart';
import 'package:mercado_pago/src/screens/ModalUsers.dart';

class menuUsers extends StatefulWidget {
  const menuUsers({super.key});

  @override
  State<menuUsers> createState() => _menuUsersState();
}

class _menuUsersState extends State<menuUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        foregroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text(
          "administrar usuarios",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Image.network(
            "https://cdn-icons-png.flaticon.com/512/1535/1535024.png",
            width: 300,
            height: 300,
          ),
          SizedBox(height: 16.0),
          Column(
            children: [
              Card(
                child: ListTile(
                  title: Text("Buscar usuario"),
                  leading: Icon(Icons.connect_without_contact_rounded),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    mostrarModalConsultarUsuarios(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("usuarios"),
                  leading: Icon(Icons.connect_without_contact_rounded),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    mostrarModalConsultarUsuarios(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("solicitudes"),
                  leading: Icon(Icons.connect_without_contact_rounded),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    mostrarModalConsultarUsuarios(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("informes"),
                  leading: Icon(Icons.connect_without_contact_rounded),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    mostrarModalConsultarUsuarios(context);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
