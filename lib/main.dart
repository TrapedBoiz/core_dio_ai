import 'package:core_dio/domain/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/repositories/user_repository_impl.dart';
import 'data/services/api_service.dart';
import 'presentation/controllers/user_controller.dart';
import 'presentation/pages/user_page.dart';

void main() {
  // Create dependencies
  final apiService = ApiService();
  final userRepository = UserRepositoryImpl(apiService);

  runApp(MyApp(userRepository: userRepository));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp({super.key, required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dio Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => UserController(userRepository),
        child: const UserPage(),
      ),
    );
  }
}
