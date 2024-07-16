import 'package:flutter/material.dart';

class menuPrincipal extends StatefulWidget {
  const menuPrincipal({super.key});

  @override
  State<menuPrincipal> createState() => _menuPrincipalState();
}

class _menuPrincipalState extends State<menuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("mercado libre col"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inicio');
                }, 
                child: Text("iniciar sesion"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.lightBlue[400],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Buscar productos",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    )
                  )
                ),
                SizedBox(width: 10),
                IconButton(onPressed: () {},
                 icon: Icon(Icons.favorite_border),
                 ),
                 IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.notification_add),
                 ),
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(categories[index]['icono']),
                            SizedBox(width: 10),
                            Text(
                              categories[index]['titulo'],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }, 
              ),
            ),
          ],
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30.0, color: Colors.lightBlue[400]),
              label: "inicio"),
            BottomNavigationBarItem(icon: Icon(Icons.shop, size: 30.0, color: Colors.lightBlue[400]),
            label: "compra"),
            BottomNavigationBarItem(icon: Icon(Icons.exit_to_app_sharp, size: 30.0, color: Colors.lightBlue[400]),
            label: "salir"),
          ],
        ),
    );
  }
}







final List<Map<String, dynamic>> categories = [
  {'codigo': '001', 'icono': Icons.home, 'titulo': 'Hogares y muebles'},
  {'codigo': '002', 'icono': Icons.phone_android, 'titulo': 'Celulares'},
  {'codigo': '003', 'icono': Icons.checkroom, 'titulo': 'Ropa y accesorios'},
  {'codigo': '004', 'icono': Icons.computer, 'titulo': 'Computación'},
  {'codigo': '005', 'icono': Icons.kitchen, 'titulo': 'Electro Hogar'},
  {'codigo': '006', 'icono': Icons.sports_soccer, 'titulo': 'Deportes'},
  {'codigo': '007', 'icono': Icons.build, 'titulo': 'Herramientas'},
  {'codigo': '008', 'icono': Icons.brush, 'titulo': 'Belleza'},
  {'codigo': '009', 'icono': Icons.tv, 'titulo': 'Electrónica y audio'},
  {'codigo': '010', 'icono': Icons.fastfood, 'titulo': 'Alimentos y bebidas'},
  {'codigo': '011', 'icono': Icons.pets, 'titulo': 'Animales y mascotas'},
];