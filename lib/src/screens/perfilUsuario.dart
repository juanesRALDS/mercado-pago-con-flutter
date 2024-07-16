import 'package:flutter/material.dart';

class PerfilUsuario extends StatefulWidget {
  const PerfilUsuario({super.key});

  @override
  State<PerfilUsuario> createState() => _PerfilUsuarioState();
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white)),
          title: Text("perfil",
          style: TextStyle(color: Colors.white),
          ),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("http://imagen.jpg"),
            ),
            SizedBox(height: 10),
            Text("mario benedetti",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Expanded(child: ListView(
              children: [
                ListTile(leading: Icon(
                  Icons.person_2_outlined,
                  color: Colors.blue,
                ),
                title: Text("genero"),
                trailing: Text("femenino"),
                onTap: () {},
                ),


                ListTile(leading: Icon(
                  Icons.cake, color: Colors.blue),
                title: Text("cumpleaños"),
                trailing: Text("12-2-2000"),
                onTap: () {},
                ),

                ListTile(leading: Icon(
                  Icons.phone, color: Colors.blue),
                title: Text("numero de telefono"),
                trailing: Text("320 - 34983284923"),
                onTap: () {},
                ),

                ListTile(leading: Icon(
                  Icons.lock, color: Colors.blue),
                title: Text("cambiar contraseña"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
                ),
              ],
            ))
          ],
        ),
      ),
      ),
    );
  }
}