import 'package:http/http.dart';
import 'package:movies/data/core/api_constants.dart';
import 'dart:convert';

class ApiClient {
  final Client _client;
  ApiClient(this._client);
  // get method with dynamic as returntype
  dynamic get(String path) async {
    final response = await _client.get(
      Uri.parse("${ApiConstants.baseUrl}$path?api_key=${ApiConstants.aPIKEY}"),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
