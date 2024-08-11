import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
 
Future<List<Usuarios>> consultarUsuarios() async {
  final response = await http.get(
      Uri.parse('https://apirestnodeexpressmongodb.onrender.com/api/users'));
 
  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body);
    return jsonList.map((json) => Usuarios.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
 
class Usuarios {
  final String name;
  final String email;
 
  const Usuarios({
    required this.name,
    required this.email,
  });
 
  factory Usuarios.fromJson(Map<String, dynamic> json) {
    return Usuarios(
      name: json['name'],
      email: json['email'],
    );
  }
}