import 'package:flutter/foundation.dart';
import '../../domain/repositories/user_repository.dart';
import '../../models/user_model.dart';

class UserController extends ChangeNotifier {
  final UserRepository _repository;
  
  UserController(this._repository);

  UserResponse? _userResponse;
  String _error = '';
  bool _isLoading = false;

  UserResponse? get userResponse => _userResponse;
  String get error => _error;
  bool get isLoading => _isLoading;

  Future<void> fetchUsers() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      _userResponse = await _repository.getUsers();
      _error = '';
    } catch (e) {
      _error = e.toString();
      _userResponse = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
