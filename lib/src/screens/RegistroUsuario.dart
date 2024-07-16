import 'package:flutter/material.dart';


class paginaDeRegistro extends StatefulWidget {
  const paginaDeRegistro({super.key});

  @override
  State<paginaDeRegistro> createState() => _paginaDeRegistroState();
}

class _paginaDeRegistroState extends State<paginaDeRegistro> {
  final _formKey = GlobalKey<FormState>();
  String txtNombres = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          // controller: controller,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.network("https://cdn-icons-png.flaticon.com/128/758/758669.png", height: 100, width: 100),
                SizedBox(height: 16.0),
                Text("ir a registrarse..",
                style: TextStyle(fontSize: 2.0,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text("crear una nueva cuenta",
                style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "nombre completo",
                    prefixIcon: Icon(Icons.person_3_rounded),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ingrese nombre completo';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtNombres = value!;
                  }
                ),
                SizedBox(height: 18),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "nombre completo",
                    prefixIcon: Icon(Icons.person_3_rounded),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ingrese nombre completo';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtNombres = value!;
                  }
                ),
                SizedBox(height: 18),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "nombre completo",
                    prefixIcon: Icon(Icons.person_3_rounded),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ingrese nombre completo';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    txtNombres = value!;
                  }
                ),
                SizedBox(height: 24.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("registro exitoso")),
                        );
                    }
                  }, child: Text("Inscribirse"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("tienes una cuenta?"),
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, '/inicio');
                    }, child: Text("iniciar sesion",
                    style: TextStyle(color: Colors.blue),
                    ),
                    ),
                  ],
                )
              ],
            ),

            
          ),
        ),
      ),
    );
  }
}