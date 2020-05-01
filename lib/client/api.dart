import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Api {
  final baseUrl = "https://rickandmortyapi.com/api/";

  getCharacters() async {
    var response = await http.get(baseUrl+'https://rickandmortyapi.com/api/character/');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
  