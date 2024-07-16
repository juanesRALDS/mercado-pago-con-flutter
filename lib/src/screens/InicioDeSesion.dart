import 'package:flutter/material.dart';

class PaginaDeInicio extends StatelessWidget {
  const PaginaDeInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://cdn-icons-png.flaticon.com/128/758/758669.png", width: 100, height: 100,),
              Title(color: Colors.black, child: Text("hola"),),
              SizedBox(height: 16.0),
              Text("bienvenido a mercado libre col", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                "iniciar sesion para continuar..",
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'digita tu gmail',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {},
                child: Text("iniciar sesion"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  ),
                  ),
              ),
              SizedBox(height: 20.0),
              Text(
                "0 inicie con ",
                style: TextStyle(color: Colors.green),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(onPressed: () {},
                icon: Image.network("https://brandemia.org/sites/default/files/sites/default/files/google_icono_despues.jpg", height: 41, width: 41),
                label: Text("logeate con Google"),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(onPressed: () {},
                icon: Image.network("https://img.freepik.com/vector-premium/icono-logotipo-circulo-facebook-aplicacion-redes-sociales-aplicacion-red-marca-editorial-popular-ilustracion-vectorial_913857-373.jpg", height: 41, width: 41),
                label: Text("logeate con facebook"),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                ),
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(onPressed: () {}, 
              child: Text("olvido sy password", style: TextStyle(color: Colors.blue),
              ),
              ),
            
            ],
          ),
        ),
      ),
    ),
    );
  }
}