import '../../models/user_model.dart';

abstract class UserRepository {
  Future<UserResponse> getUsers();
}
