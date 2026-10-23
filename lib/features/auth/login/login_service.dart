import 'dart:convert';
import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_endpoints.dart';
import '../models/login_model.dart';

class LoginService {
  final ApiClient _apiClient = ApiClient();

  Future<bool> login(LoginModel loginModel) async {
    try {
      final response = await _apiClient.postData(
        ApiEndpoints.login, 
        loginModel.toJson(),
      );
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        
        return true;
      } else {
       
        return false;
      }
    } catch (e) {
      print("Error: $e");
      return false;
    }
  }
}