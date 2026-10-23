import 'package:http/http.dart' as http;
import 'dart:convert';
import '../constants/api_constants.dart';

class ApiClient {

  Future<http.Response> postData(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse("${ApiConstants.baseUrl}$endpoint");
    
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );

    return response;
  }
}