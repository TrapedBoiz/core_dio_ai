import 'package:dio/dio.dart';
import '../../models/user_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://reqres.in/api';

  Future<UserResponse> getUsers() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('$_baseUrl/users', 
        queryParameters: {'page': 2}
      );
      
      if (response.statusCode == 200 && response.data != null) {
        return UserResponse.fromJson(response.data!);
      } else {
        throw Exception('Failed to load users');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Error fetching users: $e');
    }
  }
}
