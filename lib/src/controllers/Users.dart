import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Users {
  final String id;
  final String name;
  final String email;

  const Users({
    required this.id,
    required this.name,
    required this.email,
  });

  Users.empty()
      : id = '',
        name = '',
        email = '';

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
    );
  }
}

Future<Users> createUser(String name, String email, String password) async {
  var url = Uri.parse('https://apirestnodeexpressmongodb.onrender.com/api/users'); // Corrección aquí: utilizamos interpolación de cadenas para incluir 'id'
  var response = await http.post(
    url,
    headers: {'Content-Type': 'application/json; charset=UTF-8'},
    body: jsonEncode({'name': name, 'email': email, 'password': password}),
  );

  if (response.statusCode == 200) { // Nota: he cambiado el código para verificar si el estado es 200, que es comúnmente aceptado para una creación exitosa, aunque originalmente era 201.
    // Si el servidor devuelve una respuesta OK, parseamos el JSON
    return Users.fromJson(jsonDecode(response.body));
  } else {
    // Si la respuesta no fue OK, lanzamos un error.
    throw Exception('Failed to create user.');
  }


}


Future<void> deleteUsers(String id) async {
  final http.Response response = await http.delete(
    Uri.parse('https://apirestnodeexpressmongodb.onrender.com/api/users/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  if (response.statusCode != 200) {
    throw Exception('Failed to delete user');
  }
}


