import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_endpoints.dart';
import '../models/signup_model.dart';

class SignupService {
  final ApiClient _apiClient = ApiClient();

  Future<bool> register(SignupModel signupModel) async {
    try {
      final response = await _apiClient.postData(
        ApiEndpoints.register,
        signupModel.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
      
        return true;
      } else {
      
        return false;
      }
    } catch (e) {
      print("Signup Error: $e");
      return false;
    }
  }
}