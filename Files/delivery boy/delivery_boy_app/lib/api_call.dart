import 'dart:convert';

import 'package:http/http.dart' as http;


class Users {
late String id;
late String password;
Users({
required this.id,
required this.password,
});
factory Users.fromJson(Map<String,dynamic>json)=> Users(id: json["id"], password: json["password"]);
}
Future<Users> getUsers() async {
final response = await http.get (Uri.parse('http://localhost:9000/api/auth/login'));
if (response.statusCode == 200) {
return Users.fromJson(json.decode(response.body)[0]);

}else {
throw Exception('failed to load post');

}



}
