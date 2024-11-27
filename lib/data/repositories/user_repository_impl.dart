import '../../domain/repositories/user_repository.dart';
import '../../models/user_model.dart';
import '../services/api_service.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiService _apiService;

  UserRepositoryImpl(this._apiService);

  @override
  Future<UserResponse> getUsers() async {
    try {
      return await _apiService.getUsers();
    } catch (e) {
      throw Exception('Failed to fetch users: $e');
    }
  }
}
