import 'package:flutter/material.dart';
import 'package:mercado_pago/src/controllers/ConsultarUsuarios.dart';
import 'package:mercado_pago/src/controllers/Users.dart';

void mostrarModalConsultarUsuarios(BuildContext context) async {
  try {
    List<Users> usuarios = await consultarUsuarios();

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.event),
                  )
                ],
                backgroundColor: Colors.red[100],
                title: Text("Usuarios"),
              ),
              body: ListView.builder(
                itemCount: usuarios.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(usuarios[index].name),
                    subtitle: Text(usuarios[index].email),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.update,
                            color: Colors.purple[300],
                          ),
                          onPressed: () {
                            // Aquí puedes agregar la lógica para actualizar el usuario
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () async {
                            try {
                              await deleteUsers(usuarios[index].id);
                              setState(() {
                                usuarios.removeAt(index);
                              });
                            } catch (error) {
                              print("Error al eliminar usuario: $error");
                              // Aquí puedes agregar lógica para mostrar un mensaje de error al usuario
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  } catch (error) {
    print("Error al consultar usuarios: $error");
    // Aquí puedes agregar lógica para mostrar un mensaje de error al usuario
  }
}
